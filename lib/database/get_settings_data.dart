import 'package:torrents_digger/src/rust/api/database/get_settings_kv.dart';

void getSettingsValues() async {
  Map<String, String> settingsKv = await getSettingsKv();
  var _ = settingsKv.length;
  // TODO LATER
}
