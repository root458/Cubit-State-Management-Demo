import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget buildLoadingScreen(BuildContext context) {
  return Center(
    child: SizedBox(
      height: MediaQuery.of(context).size.width * 0.6,
      width: MediaQuery.of(context).size.width * 0.6,
      child: const FittedBox(
        child: SpinKitDoubleBounce(
          color: Colors.deepPurple,
          size: 50.0,
        ),
      ),
    ),
  );
}
