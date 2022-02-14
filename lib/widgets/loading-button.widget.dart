import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  var text = "";
  final VoidCallback onPressed;

  LoadingButton({
    Key? key,
    required this.busy,
    required this.invert,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: invert
                    ? Theme.of(context).primaryColor
                    : Colors.white, // background
                onPrimary: invert
                    ? Colors.white
                    : Theme.of(context).primaryColor, // foreground
              ),
              child: Text(text),
              onPressed: onPressed,
            ),
          );
  }
}
