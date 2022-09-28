import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:invest/common/widgets/custom_button.dart';
import 'package:invest/common/widgets/custom_textfield.dart';
import 'package:invest/features/screens/auth/login.dart';
import 'package:invest/features/widgets/services/auth_service.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _createAccountFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  void createAccountUser() {
    authService.createAccountUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      firstname: _firstnameController.text,
      lastname: _lastnameController.text,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _firstnameController.dispose();
    _lastnameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: Text(
                    'App',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 150, left: 40, right: 40, bottom: 10),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: Form(
                  key: _createAccountFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _firstnameController,
                        hintText: 'Name',
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        text: 'Create Account',
                        onTap: () {
                          if (_createAccountFormKey.currentState!.validate()) {
                            createAccountUser();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Already have an account? ',
                      ),
                      TextSpan(
                          text: 'Login',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            })
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
