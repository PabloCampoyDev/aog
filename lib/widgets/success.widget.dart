import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

// ignore: must_be_immutable
class Success extends StatelessWidget {
  var result = "";
  final VoidCallback reset;

  Success({
    Key? key,
    required this.reset,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 35,
              fontFamily: "Big Shoulders Display",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LoadingButton(
              busy: false,
              invert: true,
              text: "CALCULAR NOVAMENTE",
              onPressed: reset),
        ],
      ),
    );
  }
}
