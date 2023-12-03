import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key, required this.text});
  final String text;

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 45.0,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: const BorderRadius.all(Radius.circular(4.0))),
          child: Row(
            children: [
              Text(
                widget.text,
                style: const TextStyle(
                  fontFamily: 'sm',
                  fontSize: 16.0,
                ),
              ),
              const Spacer(),
              FlutterSwitch(
                value: _value,
                toggleColor: Colors.grey.shade200,
                activeColor: Colors.red,
                inactiveColor: Colors.grey.shade400,
                width: 20.0,
                height: 16.0,
                activeText: '',
                inactiveText: '',
                valueFontSize: 8.0,
                toggleSize: 8.0,
                duration: const Duration(microseconds: 100),
                borderRadius: 30.0,
                padding: 4,
                showOnOff: true,
                onToggle: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
