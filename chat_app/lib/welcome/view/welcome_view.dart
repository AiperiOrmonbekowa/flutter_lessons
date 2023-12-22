import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Chat App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/thunder.svg'),
              const SizedBox(height: 10),
              Text(
                'Flash Chat',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {}, child: const Text('Login'),
          
          ),
        ],
      ),
    );
  }
}
