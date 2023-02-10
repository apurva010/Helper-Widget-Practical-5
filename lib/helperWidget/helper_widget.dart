import 'package:flutter/material.dart';

class HelperWidgets extends StatelessWidget {
  const HelperWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Helper Widgets",
          ),
        ),
        body: const AlignWidget(),
      ),
    );
  }
}

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      heightFactor: 2,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        child: Text("container"),
      ),
    );
  }
}
