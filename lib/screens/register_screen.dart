import 'package:chatapp/helper/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  String? Email;
  String? Password;
  final email=TextEditingController();
  final pass=TextEditingController();

  Future<void> signUp() async {
    final response = await Supabase.instance.client.auth.signUp(
      email : email.text,
      password : pass.text,
    );
    if (response.error == null) {
      print('‘التسجيل ناجح!’');
    } else {
      print('‘خطأ: ${response.error!.message}’');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            SizedBox(height: 75),
            Image.asset(
              'assets/images/Chat-lab-bubble-logo-white-background-not-tail.mXlmTIlh.png',

              // color: Color(0xFF2B475E),
              height: 100,
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 150),
            Row(
              children: [
                Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              controller: email,

              onChanged: (data) {
                Email = data;
              },
              hintText: 'Email',

            ),
            SizedBox(height: 15),
            CustomTextFormField(
              controller: pass,
              onChanged: (data) {
                Password = data;
              },
              hintText: 'Password',

            ),
            SizedBox(height: 15),
            CustomButton(
              text: 'Register',
              onPressed: () async {
                await signUp();

              },
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' already have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color(0xffC7EDE6)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

extension on AuthResponse {
  get error => null;
}
// try {
// var auth = FirebaseAuth.instance;
// UserCredential user = await auth.createUserWithEmailAndPassword(
// email: Email!,
// password: Password!,
// );
// print(user.user!.displayName);
// } on Exception catch (e) {
// 'Error sending email verification $e';
// }
// try {
//   UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: Email!,
//       password: Password!,
//   );
//   print(userCredential.user!.displayName);
// } on FirebaseAuthException catch (e) {
//   if (e.code == 'weak-password') {
//     print('The password provided is too weak.');
//   } else if (e.code == 'email-already-in-use') {
//     print('The account already exists for that email.');
//   }
// } catch (e) {
//   print(e);
// }