import 'package:flutter/material.dart';
import 'package:todo_app/screens/dashboard_screen.dart';
import 'package:todo_app/screens/register_screen.dart';
import '../constants.dart';
import '../widgets/auth_textfield.dart';
import '../widgets/default_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.0),
                  child: Image.asset('assets/images/Done.png'),
                ),
                const SizedBox(height: 5),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Welcome back \nto\n',
                    style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'OUR REMINDER',
                        style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const AuthTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: 'Enter your email',
                ),
                const SizedBox(height: 10),
                const AuthTextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  hintText: 'Enter password',
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                const SizedBox(height: 30),
                DefaultElevatedButton(
                  color: secondaryColor,
                  text: 'Sign In',
                  textColor: Colors.white,
                  textFontSize: 20,
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "Don't have an account ? ",
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign Up',
                          style: TextStyle(
                            color: primaryRedTextColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
