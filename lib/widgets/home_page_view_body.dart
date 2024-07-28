import 'package:flutter/material.dart';
import 'package:task/chat_list.dart';
import 'package:task/widgets/message_widget.dart';

class HomePageViewBody extends StatelessWidget {
  const HomePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Messages",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return MessageWidget(
                chatModel: chats[index],
              );
            },
          ),
        ],
      ),
    );

    
  }
}
