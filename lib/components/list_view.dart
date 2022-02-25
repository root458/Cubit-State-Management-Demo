import 'package:flutter/material.dart';

Widget buildListView(List phoneList) {
  return ListView.builder(
      itemCount: phoneList.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 0),
          child: Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.deepPurple,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product: ${phoneList[index].product}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Model: ${phoneList[index].model}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Price: ${phoneList[index].price.toString()}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        );
      }));
}
