import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:telegram_ui/pages/home.dart';
import 'package:telegram_ui/pages/verify_code.dart';
import 'package:telegram_ui/pages/round_button.dart';
import 'package:telegram_ui/pages/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loading = false ;
  final phoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 80,),

            TextFormField(
              controller: phoneNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: '+1 234 3455 234'
              ),
            ),
            SizedBox(height: 80,),
            RoundButton(title: 'Login',loading: loading, onTap: (){

              setState(() {
                loading = true ;
              });
              auth.verifyPhoneNumber(
                  phoneNumber: phoneNumberController.text,
                  verificationCompleted: (_){
                    setState(() {
                      loading = false ;
                    });
                  },
                  verificationFailed: (e){
                    setState(() {
                      loading = false ;
                    });
                    Utils().toastMessage(e.toString());
                  },
                  codeSent: (String verificationId , int? token){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => VerifyCodeScreen(verificationId:verificationId ,)));
                    setState(() {
                      loading = false ;
                    });
                  },
                  codeAutoRetrievalTimeout: (e){
                    Utils().toastMessage(e.toString());
                    setState(() {
                      loading = false ;
                    });
                  });
            })

          ],
        ),
      ),
    );
  }
}
