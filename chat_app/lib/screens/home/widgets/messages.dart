import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final messagesList = Message.generateHomePageMessages();
  Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: _builtMessages(),
      ),
    );
  }

  Widget _builtMessages() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: ((context, index) => _builtMessage(context, index)),
      separatorBuilder: (_, index) => const SizedBox(height: 30),
      itemCount: messagesList.length,
    );
  }

  Widget _builtMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(
              message: messagesList[index],
            ),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: messagesList[index].user.bgColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              messagesList[index].user.iconUrl,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messagesList[index].user.firstName} ${messagesList[index].user.lastName}',
                      style: const TextStyle(
                        color: kPrimaryDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      messagesList[index].lastTime,
                      style: const TextStyle(color: kGreyLight),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: kPrimaryDark),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
