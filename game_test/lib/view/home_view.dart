import 'package:flutter/material.dart';
import 'package:game_test/components/appBar_title.dart';
import 'package:game_test/components/continents.dart';
import 'package:game_test/models/models.dart';
import 'package:svg_flutter/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: 'Capitals of the Words',
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/settings.svg'),
            onPressed: () {},
          ),
          const Icon(Icons.more_vert),
          const SizedBox(
            width: 15,
          )
        ],
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 3),
          child: Divider(
            color: Color(0xFF0C356A),
            indent: 20,
            endIndent: 15,
            thickness: 2.5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GridView.builder(
          padding: const EdgeInsets.all(6),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final continent = continents[index];
            return ContinentsCard(continent: continent);
          },
        ),
      ),
    );
  }
}
