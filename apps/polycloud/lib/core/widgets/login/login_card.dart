import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  final Icon icon;

  final String title;

  final String subtitle;

  final VoidCallback onPressed;

  const LoginCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: .hardEdge,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
        side: BorderSide(color: Colors.black, width: 1),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsetsGeometry.all(16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.purpleAccent,
                ),
                child: SizedBox(width: 48, height: 48, child: icon),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.bodyMedium),
                  Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsGeometry.all(16),
              child: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
