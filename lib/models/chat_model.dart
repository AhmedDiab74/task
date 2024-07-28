class ChatModel {
  final String profileImage;
  final String username;
  final String message;
  final String time;
  final int countNewMessage;
  final bool isOnline;
  final bool isNew;

  ChatModel({
    required this.profileImage,
    required this.username,
    required this.message,
    required this.time,
    required this.countNewMessage,
    required this.isOnline,
    required this.isNew,
  });
}
