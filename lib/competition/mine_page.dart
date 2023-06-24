import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Container(
                width: 450,
                height: 50,
                margin: const EdgeInsets.only(top: 0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/7.png'),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 450,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
