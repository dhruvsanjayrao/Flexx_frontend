import 'package:flutter/material.dart';

class Tos extends StatefulWidget {
  static const String routeName = '/termsofservice';
  const Tos({Key? key}) : super(key: key);

  @override
  State<Tos> createState() => _TosState();
}

class _TosState extends State<Tos> {
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
                  onPressed: () => Navigator.pop(context, const Tos()),
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            const Text(
              'Terms of Service',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )
          ],
        ),
      ))),
    );
  }
}
