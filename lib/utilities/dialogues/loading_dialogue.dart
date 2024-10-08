import 'package:flutter/material.dart';

typedef CloseDialogue = void Function();

CloseDialogue showLoadingDialogue(
    {required BuildContext context, required String text}) {
  final dialogue = AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(
          height: 10.0,
        ),
        Text(text),
      ],
    ),
  );
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => dialogue,
  );

  return () => Navigator.of(context).pop();
}
