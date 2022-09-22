import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  static const String routeName = '/landing/faq';
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () => Navigator.pop(context, const Faq()),
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const Text(
                'FAQ',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
