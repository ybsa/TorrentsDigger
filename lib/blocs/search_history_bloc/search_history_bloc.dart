import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Events
abstract class SearchHistoryEvent {}

class LoadHistory extends SearchHistoryEvent {}

class AddSearchTerm extends SearchHistoryEvent {
  final String term;
  AddSearchTerm(this.term);
}

class ClearHistory extends SearchHistoryEvent {}

// States
abstract class SearchHistoryState {}

class SearchHistoryInitial extends SearchHistoryState {}

class SearchHistoryLoaded extends SearchHistoryState {
  final List<String> history;
  SearchHistoryLoaded(this.history);
}

// Bloc
class SearchHistoryBloc extends Bloc<SearchHistoryEvent, SearchHistoryState> {
  static const _key = 'search_history';

  SearchHistoryBloc() : super(SearchHistoryInitial()) {
    on<LoadHistory>(_onLoadHistory);
    on<AddSearchTerm>(_onAddSearchTerm);
    on<ClearHistory>(_onClearHistory);
  }

  Future<void> _onLoadHistory(
    LoadHistory event,
    Emitter<SearchHistoryState> emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final history = prefs.getStringList(_key) ?? [];
    emit(SearchHistoryLoaded(history));
  }

  Future<void> _onAddSearchTerm(
    AddSearchTerm event,
    Emitter<SearchHistoryState> emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> history = prefs.getStringList(_key) ?? [];

    // Remove if exists to move to top
    history.remove(event.term);
    // Add to start
    history.insert(0, event.term);
    // Limit to 10 items
    if (history.length > 10) {
      history = history.sublist(0, 10);
    }

    await prefs.setStringList(_key, history);
    emit(SearchHistoryLoaded(history));
  }

  Future<void> _onClearHistory(
    ClearHistory event,
    Emitter<SearchHistoryState> emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
    emit(SearchHistoryLoaded([]));
  }
}
