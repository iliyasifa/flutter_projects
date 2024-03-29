import 'package:clothes_app/models/clothes.dart';
import 'package:flutter/material.dart';

class AddCart extends StatelessWidget {
  final Clothes clothes;
  const AddCart({Key? key, required this.clothes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                clothes.price,
                style: const TextStyle(
                  height: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  primary: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.shopping_cart_outlined),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
