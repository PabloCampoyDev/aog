// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:seleciona_combustivel/widgets/input.widget.dart';
import 'package:seleciona_combustivel/widgets/loading-button.widget.dart';

// ignore: must_be_immutable
class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  final VoidCallback submitFunc;

  SubmitForm({
    Key? key,
    required this.alcCtrl,
    required this.gasCtrl,
    required this.busy,
    required this.submitFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Gasolina",
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Álcool",
            ctrl: alcCtrl,
          ),
        ),
        LoadingButton(
            busy: busy, invert: false, text: "CALCULAR", onPressed: submitFunc),
      ],
    );
  }
}
