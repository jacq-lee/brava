import 'package:flutter/material.dart';
import 'package:brava/style/style.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.btnText=""});

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: lightPink,
        foregroundColor: stagePink,
      ),
      onPressed: () {},
      child: Text(btnText),
    );
  }
}
