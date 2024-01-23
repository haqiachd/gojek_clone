import 'package:flutter/material.dart';
import 'package:gojek_clone/ui/widgets/main/main.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: GojekOtherAppbar(
            title: 'Chat',
          ),
        ),
        ComingSoonText(),
      ],
    );
  }
}
