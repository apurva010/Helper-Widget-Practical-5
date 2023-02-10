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
        body: const FlexibleWidget(),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
                width: 200,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
                width: 200,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
                width: 600,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
                width: 600,
              ),
            ),
          ],
        ),
      ],
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
        child: const Text("container"),
      ),
    );
  }
}
