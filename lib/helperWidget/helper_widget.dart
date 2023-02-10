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
        body: const VerticalDividerWidget(),
      ),
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          color: Colors.red,
        ),
        const VerticalDivider(
          thickness: 5,
          color: Colors.black,
        ),
        Container(
          width: 100,
          color: Colors.red,
        ),
      ],
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
        const Divider(
          height: 100,
          color: Colors.black,
          thickness: 2,
          endIndent: 10,
          indent: 50,
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
