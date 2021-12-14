import 'package:flutter/material.dart';

class CustomeBotton extends StatelessWidget {
  final void Function()? ontap;
  const CustomeBotton({ Key? key, this.ontap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      child: MaterialButton(
        height: 50,
        minWidth: 200,
        child: const Text(
          "Log In",
          style: TextStyle(
            color: Colors.blue
          ),
          ),
          onPressed: ontap,
      ),
    );
  }
}