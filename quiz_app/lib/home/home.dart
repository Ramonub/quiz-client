import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Welkom bij deze mooie quiz app',
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Container(
              width: 500,
              decoration: BoxDecoration(border: Border.all()),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(),
              ),
            ),
          ),
          ...List.generate(
            28,
            (index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text('data'),
            ),
          ),
        ],
      ),
    );
  }
}
