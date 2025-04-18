import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:online_courses_app/services/chat_service.dart';
import '../model/message.dart';

class ChatController extends GetxController {
  final textC = TextEditingController();
  final scrollC = ScrollController();
  final list = <Message>[
    Message(
        msg:
            "Hello! Welcome to our online courses platform. I'm here to help with course selection, content questions, and registrations. How can I assist you today?",
        msgType: MessageType.bot)
  ].obs;

  Future<void> askQuestion() async {
    if (textC.text.trim().isNotEmpty) {
      list.add(Message(msg: textC.text, msgType: MessageType.user));
      list.add(Message(msg: '', msgType: MessageType.bot));
      final userMessage = textC.text;
      textC.clear();
      _scrollDown();

      final botResponse = await ChatService.askQuestion(userMessage);
      list.removeLast();
      list.add(Message(msg: botResponse, msgType: MessageType.bot));
      _scrollDown();
    }
  }

  void _scrollDown() {
    scrollC.animateTo(scrollC.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }
}
