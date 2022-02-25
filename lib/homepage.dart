import 'package:catalogue_demo/components/list_view.dart';
import 'package:catalogue_demo/models/phone.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Phone> _phoneList = [
      Phone(
          product: 'Vivo',
          model: 'V12',
          price: 20000,
          processor: 'Exynos',
          ram: 8),
      Phone(
          product: 'Samsung',
          model: 'A71',
          price: 47000,
          processor: 'Snapdragon',
          ram: 12)
    ];

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
      appBar: AppBar(
        leading: const Icon(Icons.phone_android),
        title: const Text('Catalogue'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: buildListView(_phoneList),
    );
  }
}
