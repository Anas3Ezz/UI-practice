import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: const Row(
            children: [
              Icon(Icons.search),
              Text(
                'Ask Meta AI or Search',
                style: TextStyle(fontSize: 18),
              )
            ],
          )),
    );
  }
}
