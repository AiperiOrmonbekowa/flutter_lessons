import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:game_test/models/models.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Capitals of the Words',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.settings,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
              ),
          itemBuilder: (context, index) {
            return const ContinentsCard();
          },
        ),
      ),
    );
  }
}

class ContinentsCard extends StatelessWidget {
  const ContinentsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Column(
        children: [
          const Text('Asia'),
          Expanded(
            child: SvgPicture.asset(
              'assets/icons/africa.svg',
            ),
          ),
        ],
      ),
    );
  }
}
