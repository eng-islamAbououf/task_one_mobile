import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  CustomInputField({
    Key? key,
    required this.txt,
    required this.prefix,
    TextInputType? inputType,
    Color? color,
    int? maxLine,
    int? maxLen,

  }) : super(key: key);
  String txt ;
  TextInputType? inputType;
  Color? color ;
  int? maxLine, maxLen ;
  Icon? prefix ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10
      ),
      child: TextFormField(
        keyboardType: inputType ?? TextInputType.text,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: txt,
          filled: true,
          fillColor: color ?? Colors.white,
          prefixIcon: prefix,
        ),
        minLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $txt';
          }
          return null;
        },
      ),
    );
  }
}
