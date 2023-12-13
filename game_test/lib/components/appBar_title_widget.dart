// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4.5),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.lightbulb,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  '12',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.add, color: Colors.green)),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        const Text('22'),
        const SizedBox(
          width: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 80,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return const Icon(Icons.favorite, color: Colors.red);
                }),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ],
    );
  }
}
