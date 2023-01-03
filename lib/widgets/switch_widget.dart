import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 19),
      // width: 142,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlutterSwitch(
            activeColor: Colors.green,
            width: 25,
            height: 13,
            // valueFontSize: 25.0,
            toggleSize: 7.47,
            value: isSwitchOn,
            // borderRadius: 30.0,
            padding: 2.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                isSwitchOn = val;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.text,
              style: GoogleFonts.inter(
                  color: const Color(0xffCDCDCD),
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
