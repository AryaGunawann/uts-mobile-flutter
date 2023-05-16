import 'package:flutter/material.dart';
import 'package:flutter_loginpage/palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';
import 'loginpage.dart'; // Import halaman "LoginPage"

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        'ChutChat',
                        style: kHeading,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Confirm Password',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            RoundedButton(
                              buttonText: 'Create Account',
                              onPressed: createAccount,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
                              )),
                              child: GestureDetector(
                                onTap: () {
                                  // Kembali ke halaman sebelumnya (LoginPage)
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Login',
                                  style: kBodyText,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void createAccount() {
    // Implement your create account logic here
    print('Creating new account...');
  }
}