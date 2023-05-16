import 'package:flutter/material.dart';
import 'package:flutter_loginpage/palatte.dart';
import 'package:flutter_loginpage/widgets/widgets.dart';
import 'forgotpassword.dart'; // Import halaman "ForgotPasswordPage"
import 'createaccount.dart'; // Import halaman "CreateAccountPage"
import 'home.dart'; // Import halaman "HomePage"

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';

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
                              icon: Icons.email,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigasi ke halaman "ForgotPasswordPage"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPasswordPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Forgot Password?',
                                style: kBodyText,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            RoundedButton(
                              buttonText: 'Login',
                              onPressed: () {
                                // Navigasi ke halaman "HomePage"
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  HomePage.routeName,
                                  (route) => false,
                                );
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Aksi saat tombol Google di tekan
                                    // Tambahkan kode aksi yang sesuai di sini
                                    print('Tombol Google ditekan');
                                  },
                                  child: Image.asset(
                                    'assets/images/google_logo.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                SizedBox(width: 16),
                                GestureDetector(
                                  onTap: () {
                                    // Aksi saat tombol GitHub di tekan
                                    // Tambahkan kode aksi yang sesuai di sini
                                    print('Tombol GitHub ditekan');
                                  },
                                  child: Image.asset(
                                    'assets/images/git.png',
                                    width: 73,
                                    height: 73,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigasi ke halaman "CreateAccountPage"
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CreateAccountPage(),
                                    ),
                                  );
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Text(
                                    'Create Account',
                                    style: kBodyText,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
