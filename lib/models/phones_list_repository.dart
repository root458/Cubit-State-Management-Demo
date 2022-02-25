import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:catalogue_demo/models/phone.dart';

class PhonesListRepository {
  static Future<List<Phone>> fetchAvailablePhones() async {
    var url = 'https://jsonkeeper.com/b/P12J';
    http.Response response = await http.get(Uri.parse(url));
    var phonesMap = jsonDecode(response.body);

    return <Phone>[
      Phone(
          product: phonesMap['phone1']['product'],
          model: phonesMap['phone1']['model'],
          price: phonesMap['phone1']['price'],
          processor: phonesMap['phone1']['processor'],
          ram: phonesMap['phone1']['ram']),
      Phone(
          product: phonesMap['phone2']['product'],
          model: phonesMap['phone2']['model'],
          price: phonesMap['phone2']['price'],
          processor: phonesMap['phone2']['processor'],
          ram: phonesMap['phone2']['ram']),
      Phone(
          product: phonesMap['phone3']['product'],
          model: phonesMap['phone3']['model'],
          price: phonesMap['phone3']['price'],
          processor: phonesMap['phone3']['processor'],
          ram: phonesMap['phone3']['ram'])
    ];
  }
}
