import 'package:agriculture_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                // const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Image.asset(
                      "assets/onboarding.png",
                      width: 380,
                  ),
                ),
                // const Spacer(),
                const SizedBox(height: 40,),
                Text("Welcome to Agricplant",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: Text("Get your agriculture products from the comfort of your home. You're just a few click aways from your products."),
                ),
                FilledButton.tonalIcon(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    icon: const Icon(IconlyLight.login),
                    label: const Text("Continue with Google")
                )
              ],
            ),
          )
      ),
    );
  }
}
