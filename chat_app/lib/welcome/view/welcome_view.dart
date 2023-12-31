import 'package:chat_app/components/animation/custom_animation.dart';
import 'package:chat_app/components/buttons/custom_elevated_button.dart';
import 'package:chat_app/login/login.dart';
import 'package:chat_app/register/view/register_view.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/thunder.svg'),
                const SizedBox(height: 15),
                const CustomAnimationText(text: 'Flah Chat'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
                text: 'Register',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterView(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
