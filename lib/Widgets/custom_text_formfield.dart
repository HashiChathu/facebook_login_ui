import 'package:flutter/material.dart';

class CustomeTextFormField extends StatefulWidget {
  final IconData suffixIcon;
  final IconData prefixIcon;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  const CustomeTextFormField({ Key? key, 
  required this.hintText, 
  required this.isPassword, 
  required this.controller, 
  required this.suffixIcon, 
  required this.prefixIcon 
  }) 
  : super(key: key);

  @override
  _CustomeTextFormFieldState createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          suffixIcon: Icon(widget.suffixIcon),
          border: const OutlineInputBorder(),
          prefixIcon: Icon(widget.prefixIcon),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}