import 'package:flutter/material.dart';
import 'package:invest/features/screens/Account/account_settings.dart';
import 'package:invest/features/screens/Account/faq.dart';
import 'package:invest/features/screens/Account/support.dart';
import 'package:invest/features/screens/Account/tos.dart';

class AccountProfile extends StatefulWidget {
  static const String routeName = '/account-profile';
  const AccountProfile({Key? key}) : super(key: key);

  @override
  State<AccountProfile> createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'App',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text(
                            'Account Settings',
                            style: TextStyle(fontSize: 28, color: Colors.grey),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, AccountSettings.routeName);
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          title: const Text(
                            'Support',
                            style: TextStyle(fontSize: 28, color: Colors.grey),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, Support.routeName);
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          title: const Text(
                            'Terms of Service',
                            style: TextStyle(fontSize: 28, color: Colors.grey),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, Tos.routeName);
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          title: const Text(
                            'FAQ',
                            style: TextStyle(fontSize: 28, color: Colors.grey),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, Faq.routeName);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
