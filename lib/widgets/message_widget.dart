import 'package:flutter/material.dart';
import 'package:task/models/chat_model.dart';
import 'package:task/widgets/profile_picture.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key, required this.chatModel});

  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        children: [
          ProfilePicture(
            isOnline: chatModel.isOnline,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatModel.username,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  chatModel.message,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                chatModel.time,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: chatModel.isNew,
                child: Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    child: Text(
                      '${chatModel.countNewMessage}',
                      style: const TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
