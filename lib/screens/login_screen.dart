import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/custom_button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods=AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start of join a meeting',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )
          ),
          Image.asset('assets/images/onboarding.jpg'),
          CustomButton(text: 'Googe Sign In', 
          onPressed: ()async{
            bool res=await _authMethods.signInWithGoogle(context);
            if(res){
              Navigator.pushNamed(context,'/home');
            }
          })
      ],)
    );
  }
}