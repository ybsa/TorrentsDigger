import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:torrents_digger/configs/api_keys.dart';

class AIChatService {
  // Using Mistral-7B-Instruct-v0.2 as it's fast and good for chat
  static const String _apiUrl =
      "https://api-inference.huggingface.co/models/mistralai/Mistral-7B-Instruct-v0.2";

  static Future<String> sendMessage(String message) async {
    if (ApiKeys.huggingFaceKey == "YOUR_HUGGING_FACE_API_KEY_HERE") {
      return "Please set your Hugging Face API Key in lib/configs/api_keys.dart";
    }

    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          "Authorization": "Bearer ${ApiKeys.huggingFaceKey}",
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "inputs": "<s>[INST] $message [/INST]", // Mistral prompt format
          "parameters": {
            "max_new_tokens": 500, // Limit response length
            "return_full_text": false, // Only return the new generated text
            "temperature": 0.7, // Creativity
          }
        }),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        if (data.isNotEmpty && data[0]['generated_text'] != null) {
          return data[0]['generated_text'].toString().trim();
        }
        return "I couldn't understand that. Please try again.";
      } else if (response.statusCode == 503) {
        return "Model is loading... please wait a moment and try again.";
      } else {
        return "Error: ${response.statusCode} - ${response.reasonPhrase}";
      }
    } catch (e) {
      return "Failed to connect: $e";
    }
  }
}
