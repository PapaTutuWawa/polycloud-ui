import 'package:flutter/material.dart';

/// The result of the dialog.
class CalendarCreationData {
  /// The name of the calendar.
  final String name;

  /// The description of the calendar.
  final String? description;

  /// Flag indicating whether the calendar should be public or not.
  final bool public;

  /// The color of the calendar.
  final Color color;

  const CalendarCreationData(
    this.name,
    this.description,
    this.public,
    this.color,
  );
}

/// A dialog for asking the user all the data we need to create or a new calendar
/// or update an existing one.
class CalendarCreationDialog extends StatefulWidget {
  /// The text that the confirm button says.
  final String buttonText;

  /// The title text of the dialog.
  final String titleText;

  /// The initial value for the calendar name.
  final String? initialName;

  /// The initial value for the calendar description.
  final String? initialDescription;

  /// The initial value for the calendar public state.
  final bool? initialPublic;

  const CalendarCreationDialog({
    required this.buttonText,
    required this.titleText,
    this.initialName,
    this.initialDescription,
    this.initialPublic,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _CalendarCreationDialogState();
}

class _CalendarCreationDialogState extends State<CalendarCreationDialog> {
  /// The form.
  final _formKey = GlobalKey<FormState>();

  /// Controller for the calendar name.
  final TextEditingController _nameController = TextEditingController();

  /// Controller for the calendar description.
  final TextEditingController _descriptionController = TextEditingController();

  /// Flag deciding whether the calendar is public or not.
  bool _isPublic = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.initialName ?? '';
    _descriptionController.text = widget.initialDescription ?? '';
    _isPublic = widget.initialPublic ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      constraints: BoxConstraints(maxWidth: 460, minHeight: 280),
      child: Padding(
        padding: const EdgeInsetsGeometry.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.titleText,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),

              SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Calendar name cannot be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _descriptionController,
                        minLines: 3,
                        maxLines: 6,
                        decoration: InputDecoration(
                          labelText: 'Description',
                          alignLabelWithHint: true,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Text('Public'),
                    Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                        horizontal: 8,
                      ),
                      child: Tooltip(
                        message:
                            'If enabled, then everyone will be able to see the events in the calendar.',
                        child: Icon(Icons.question_mark),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: .centerEnd,
                        child: Switch(
                          value: _isPublic,
                          onChanged: (bool value) {
                            setState(() {
                              _isPublic = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(),

              Padding(
                padding: const EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: .end,
                  spacing: 16,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();

                        final description =
                            _descriptionController.text.trim().isEmpty
                            ? null
                            : _descriptionController.text.trim();
                        Navigator.of(context).pop(
                          CalendarCreationData(
                            _nameController.text,
                            description,
                            _isPublic,
                            // TODO: Add a color picker
                            Colors.green,
                          ),
                        );
                      },
                      child: Text(widget.buttonText),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
