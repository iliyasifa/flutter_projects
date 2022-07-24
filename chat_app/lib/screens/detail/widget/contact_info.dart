import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final Message message;
  const ContactInfo({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${message.user.firstName}\n${message.user.lastName}',
            style: const TextStyle(
              color: Colors.white,
              height: 1.2,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              _builtCallButton(Icons.phone),
              const SizedBox(
                width: 10,
              ),
              _builtCallButton(Icons.video_camera_back),
            ],
          )
        ],
      ),
    );
  }

  Widget _builtCallButton(IconData iconData) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.3),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
