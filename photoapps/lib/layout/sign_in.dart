import 'package:flutter/material.dart';
import 'package:photoapps/widget/custom_button.dart';
import 'package:photoapps/widget/footer.dart';

import '../shared/theme.dart';
import '../widget/textformfields.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Log In',
          style: textStyle1.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 8),
        Text(
          'Sign In to continue',
          style: textStyle5.copyWith(fontSize: 14),
        ),
      ]);
    }

    Widget body() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 28),
            child: const TextFormFields(
              text: "Username",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const TextFormFields(
              text: "Password",
              obscure: true,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              body(),
              CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/main-page');
                  },
                  title: "Login"),
              const Spacer(),
              Footer(
                title: "Don't have an account?",
                buttonTitle: "Sign Up",
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
