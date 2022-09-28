import 'package:flutter/material.dart';
import 'package:invest/features/screens/Home/buy.dart';
import 'package:invest/features/screens/Home/deposit.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  'Flex',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Earn upto',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '10%',
                      style: TextStyle(fontSize: 70, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'on your funds',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Buy.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            minimumSize: const Size(100.0, 50.0),
                          ),
                          child: const Text(
                            'Buy',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(width: 30),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Deposit.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              minimumSize: const Size(50.0, 50.0)),
                          child: const Text(
                            'Deposit',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '   My Portfolio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      // shape: RoundedRectangleBorder(
                      //     side: BorderSide(color: Colors.white12, width: 2),
                      //     borderRadius: BorderRadius.circular(5)),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/Picture 1.png'),
                      ),
                      title: const Text(
                        'USDC',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing: const Text(
                        '\$3000',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: const Divider(
                        color: Colors.grey,
                        endIndent: 16,
                        indent: 16,
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/bitcoin.png'),
                      ),
                      title: const Text(
                        'BTC',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing: const Text(
                        '\$16,530',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: const Divider(
                        color: Colors.grey,
                        endIndent: 16,
                        indent: 16,
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/solana.png'),
                      ),
                      title: const Text(
                        'SOL',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing: const Text(
                        '\$8604',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: const Divider(
                        color: Colors.grey,
                        endIndent: 16,
                        indent: 16,
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/ethereum.png'),
                      ),
                      title: const Text(
                        'ETH',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing: const Text(
                        '\$4500',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: const Divider(
                        color: Colors.grey,
                        endIndent: 16,
                        indent: 16,
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/polygon.png'),
                      ),
                      title: const Text(
                        'MATIC',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing: const Text(
                        '\$6400',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                    Transform.translate(
                      offset: const Offset(0, -4),
                      child: const Divider(
                        color: Colors.grey,
                        endIndent: 16,
                        indent: 16,
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/avalanche.png'),
                      ),
                      title: const Text(
                        'AVAX',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing: const Text(
                        '\$2600',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
