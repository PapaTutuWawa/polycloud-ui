import 'package:flutter/material.dart';

const List<Color> _colors = [
  Colors.red,
  Colors.purple,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.greenAccent,
  Colors.grey,
];

class ColorPickerDialog extends StatelessWidget {
  /// The color that should be marked as selected.
  final Color initialColor;

  const ColorPickerDialog({required this.initialColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, maxHeight: 400),
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                children: _colors
                    .map(
                      (color) => Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop(color);
                          },
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusGeometry.circular(20),
                                color: color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
