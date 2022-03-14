import 'package:flutter/material.dart';
import 'package:photoapps/shared/theme.dart';
import 'package:photoapps/widget/textformfields.dart';

import '../widget/custom_button.dart';
import '../widget/footer.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
        title: Text(
          'Sign Up',
          style: textStyle1.copyWith(fontSize: 18),
        ),
        backgroundColor: bgColor,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register to create an account ',
              style: textStyle5.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: 28,
            ),
            TextFormFields(text: "Username"),
            SizedBox(
              height: 16,
            ),
            TextFormFields(text: "Email"),
            SizedBox(
              height: 16,
            ),
            TextFormFields(text: "Password", obscure: true),
            CustomButton(onPressed: () {
              Navigator.of(context).pushNamed('/main-page');
            }, title: "Sign Up"),
            const Spacer(),
            Footer(
              title: "Already have an account?",
              buttonTitle: "Sign In",
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              },
            ),
          ],
        ),
      ),
    );
  }
}
