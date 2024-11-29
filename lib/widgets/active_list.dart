import 'package:flutter/material.dart';
import 'package:messenger_project/data/person_info.dart';

class ActiveList extends StatelessWidget {
  const ActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Wrap the horizontal ListView with Expanded to fix rendering issues
        Expanded(
          flex: 2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: personData.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(personData[index].imagePath),
                      radius: 35,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      personData[index].userName.split(' ').first,
                      style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        // Vertical ListView for additional content
        Expanded(
          flex: 12,
          child: ListView.builder(
            itemCount: personData.length, // Adjust based on your data
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(personData[index].imagePath),
                  radius: 30,
                ),
                title: Text(
                  personData[index].userName,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: personData[index].isRead
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        personData[index].message,
                        style: TextStyle(
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: personData[index].isRead
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
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.circle,
                              size: 5,
                              color: personData[index].isRead
                                  ? Colors.white
                                  : Colors.white30),
                        ),
                        Text(
                          personData[index].msgTime,
                          style: TextStyle(
                            fontSize: 14,
                            // fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: personData[index].isRead
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
                  child: personData[index].isNotificationOff
                      ? const SizedBox() // Empty box when notifications are off
                      : const Icon(
                          Icons.notifications_off,
                          size: 20,
                          color: Colors.white,
                        ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
