import 'package:flutter/material.dart';
import 'package:messenger_project/data/person_info.dart';

class SingleChatView extends StatelessWidget {
  const SingleChatView({super.key, required this.itemNum});

  final int itemNum;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(personData[itemNum].imagePath),
        radius: 30,
      ),
      title: Text(
        personData[itemNum].userName,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Poppins',
          color: Colors.white,
          fontWeight:
              personData[itemNum].isRead ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              personData[itemNum].message,
              style: TextStyle(
                fontSize: 13,
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: personData[itemNum].isRead
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.circle,
                    size: 5,
                    color: personData[itemNum].isRead
                        ? Colors.white
                        : Colors.white30),
              ),
              Text(
                personData[itemNum].msgTime,
                style: TextStyle(
                  fontSize: 14,
                  // fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: personData[itemNum].isRead
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: SizedBox(
        width: 10, // Reserve space for the notification icon
        child: personData[itemNum].isNotificationOff
            ? const SizedBox() // Empty box when notifications are off
            : const Icon(
                Icons.notifications_off,
                size: 20,
                color: Colors.white,
              ),
      ),
    );
  }
}
