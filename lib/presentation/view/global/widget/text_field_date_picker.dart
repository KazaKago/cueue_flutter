import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TextFieldDatePicker extends StatefulWidget {
  TextFieldDatePicker({
    Key? key,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.dateFormat,
    required this.lastDate,
    required this.firstDate,
    required this.initialDate,
    required this.onDateChanged,
  })  : assert(!initialDate.isBefore(firstDate), 'initialDate must be on or after firstDate'),
        assert(!initialDate.isAfter(lastDate), 'initialDate must be on or before lastDate'),
        assert(!firstDate.isAfter(lastDate), 'lastDate must be on or after firstDate'),
        super(key: key);

  final ValueChanged<DateTime> onDateChanged;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateFormat? dateFormat;
  final FocusNode? focusNode;
  final String? labelText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  @override
  _TextFieldDatePicker createState() => _TextFieldDatePicker();
}

class _TextFieldDatePicker extends State<TextFieldDatePicker> {
  late TextEditingController _controllerDate;
  late DateFormat _dateFormat;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();

    if (widget.dateFormat != null) {
      _dateFormat = widget.dateFormat!;
    } else {
      _dateFormat = DateFormat.MMMEd();
    }
    _selectedDate = widget.initialDate;
    _controllerDate = TextEditingController()..text = _dateFormat.format(_selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      controller: _controllerDate,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        labelText: widget.labelText,
      ),
      onTap: () => _selectDate(context),
      readOnly: true,
    );
  }

  @override
  void dispose() {
    _controllerDate.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      _selectedDate = pickedDate;
      _controllerDate.text = _dateFormat.format(_selectedDate);
      widget.onDateChanged(_selectedDate);
    }

    widget.focusNode?.nextFocus();
  }
}
