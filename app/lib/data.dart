import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project CS"),
      ),
      body: FutureBuilder(
        future: runModel(),
        builder: (context, snapshot) {
          return Container();
        },
      ),
    );
  }

  Future<void> runModel() async {
    Interpreter interpreter = await Interpreter.fromAsset('model.tflite');

    var input = [
      [1.23, 6.54, 7.81, 3.21, 2.22]
    ];

    var output = List(1 * 2).reshape([24, 20]);

    interpreter.run(input, output);

    print(output);
  }
}
