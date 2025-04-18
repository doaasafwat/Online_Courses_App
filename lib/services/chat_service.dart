import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:online_courses_app/helper/global.dart';

class ChatService {
  static Future<String> askQuestion(String query) async {
    try {
      final Map<String, dynamic> requestBody = {
        'query': query,
      };
      final response = await http.post(
        Uri.parse(api),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return responseData['response'] ?? 'No response from the server.';
      } else {
        return 'Error: ${response.statusCode}';
      }
    } catch (e) {
      return 'Error: $e';
    }
  }
}
