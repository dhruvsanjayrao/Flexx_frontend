import 'package:flutter/material.dart';
import 'package:invest/features/widgets/services/auth_service.dart';

class AccountSettings extends StatefulWidget {
  static const String routeName = '/account-settings';
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () =>
                      Navigator.pop(context, const AccountSettings()),
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              title: Text(
                'Username',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              subtitle: Text(
                'Username',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const ListTile(
              title: Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                'Email',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                onTap: () => AuthService().logOut(context),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
