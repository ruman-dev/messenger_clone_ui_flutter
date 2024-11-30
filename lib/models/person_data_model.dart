// ignore_for_file: public_member_api_docs, sort_constructors_first
class PersonDataModel {
  final String userName;
  final String imagePath;
  final String message;
  final String msgTime;
  final bool isNotificationOff;
  final bool isRead;
  PersonDataModel({
    required this.userName,
    required this.imagePath,
    required this.message,
    required this.msgTime,
    required this.isNotificationOff,
    required this.isRead,
  });
}
