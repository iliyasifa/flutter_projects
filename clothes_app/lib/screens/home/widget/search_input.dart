import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagList = ['Woman', 'T-Shirt', 'Dress'];
  SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search Aesthetic Shirt ',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/icons/search.png',
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/icons/filter.png',
                  width: 25,
                ),
              )
            ],
          ),
          Row(
            children: tagList
                .map((e) => Container(
                      margin: const EdgeInsets.only(top: 10, right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Text(
                        e,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
