import 'package:flutter/material.dart';

class TextSwitchRow extends StatelessWidget {
  final String labelText;
  final bool value;
  final Function(bool) onChanged;

  const TextSwitchRow({
    Key? key,
    required this.labelText,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Switch(
          activeTrackColor:Colors.green ,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
