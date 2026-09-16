import 'package:flutter/material.dart';

class FrameHeader extends StatelessWidget {
  const FrameHeader({
    required this.title,
    super.key,
  });

  /// The title to display in the header.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: Row(
        children: [
          // TODO: Show a nice icon
          //Icon(Icons.flag),
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 8),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}