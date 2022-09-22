import 'package:flutter/material.dart';
import 'package:invest/Constants/global_variables.dart';
import 'package:invest/common/widgets/bottom_bar.dart';
import 'package:invest/features/screens/auth/create_account.dart';
import 'package:invest/features/widgets/services/auth_service.dart';
import 'package:invest/providers/user_provider.dart';
import 'package:invest/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invest',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariabes.backgroundColor,
        primarySwatch: Colors.amber,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const BottomBar()
          : const AuthScreen(),
    );
  }
}
