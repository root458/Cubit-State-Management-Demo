import 'package:flutter/material.dart';

Widget buildErrorView(BuildContext context) {
  return Center(
    child: SizedBox(
      height: MediaQuery.of(context).size.width * 0.6,
      width: MediaQuery.of(context).size.width * 0.6,
      child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Flexible(flex: 15, child: Text('Sorry :(')),
              Flexible(
                  flex: 15,
                  child: Text('Check your connection and try again')),
              Flexible(
                  flex: 70,
                  child: Icon(
                    Icons.signal_wifi_connected_no_internet_4,
                    size: 70,
                  ))
            ],
          )),
    ),
  );
}
