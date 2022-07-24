import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatelessWidget {
  final contactList = User.generateUsers();
  RecentContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: contactList[index].bgColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(contactList[index].iconUrl),
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 15),
              itemCount: contactList.length,
            ),
          ),
        ],
      ),
    );
  }
}
