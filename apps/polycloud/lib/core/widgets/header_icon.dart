import 'package:flutter/material.dart';

/// Header icon representing PolyCloud.
class HeaderIcon extends StatelessWidget {
  /// The size of the icon.
  final double _iconSize;

  const HeaderIcon({required this._iconSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(left: 16, right: 32),
      child: Icon(Icons.cloud, size: _iconSize),
    );
  }
}
