import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/surot.jpg'),
            ),
            const Text(
              'Aiperi Ormonbekova',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.phone),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '+996 708 12 34 56',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          const  SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                  ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.email),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'aiperi.ormonbekova@gmail.com',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
