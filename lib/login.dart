import 'package:facebook_login_ui/Widgets/custom_text_formfield.dart';
import 'package:flutter/material.dart';

import 'Widgets/custome_button.dart';
import 'Widgets/home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailorphoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Icon(Icons.facebook),
              const Text("Facebook",style: 
              TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),


              CustomeTextFormField(
                hintText: 'Email or Phone', 
                isPassword: false, 
                controller: emailorphoneController, 
                prefixIcon: Icons.mail, 
                suffixIcon: Icons.done,
                ),
              CustomeTextFormField(
                hintText: 'Password', 
                isPassword: true, 
                controller: passwordController, 
                prefixIcon: Icons.lock, 
                suffixIcon: Icons.visibility,
                ),

                CustomeBotton(
                  ontap: () {
                    setState(() {
                      debugPrint(emailorphoneController.text);
                      debugPrint(passwordController.text);
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Home(
                        email: emailorphoneController.text,
                        password: passwordController.text,
                      );
                    }));

                  },
                ),  
            ],
          ),
        ),
      ),
    );
  }
}