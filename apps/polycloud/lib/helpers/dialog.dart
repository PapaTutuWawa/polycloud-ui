import 'package:flutter/material.dart';

/// Shows a dialog to ask the user for confirmation.
///
/// [context]:The BuildContext to use for the dialog.
/// [title]: The dialog title.
/// [body]: The body of the dialog.
/// [confirm]: The text of the confirmation button.
Future<bool> confirm(
  BuildContext context,
  String title,
  String body,
  String confirm,
) async {
  final result = await showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(confirm, style: TextStyle(color: Colors.red)),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text('Cancel'),
        ),
      ],
    ),
  );

  return result ?? false;
}
