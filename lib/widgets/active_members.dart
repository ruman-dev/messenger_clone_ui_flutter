import 'package:flutter/material.dart';
import 'package:messenger_project/data/person_info.dart';

class ActiveMembers extends StatelessWidget {
  const ActiveMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  style: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
