import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: const Text(
            'Book Now',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
