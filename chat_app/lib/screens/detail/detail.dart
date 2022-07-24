import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/screens/detail/widget/contact_info.dart';
import 'package:chat_app/screens/detail/widget/detail_app_bar.dart';
import 'package:chat_app/screens/detail/widget/detail_message.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Message message;
  const DetailPage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
          const DetailAppBar(),
          ContactInfo(message: message),
          Expanded(
            child: DetailMessages(),
          ),
        ],
      ),
    );
  }
}
