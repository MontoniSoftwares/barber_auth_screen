import 'package:barber_auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/barber.png")
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 40,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Barbearia Lane\n",
                        style: Theme.of(context).textTheme.headlineMedium
                      ),
                      TextSpan(
                        text: "Bem-vindo a nossa barbearia",
                        style: Theme.of(context).textTheme.headlineSmall
                      ),
                    ]
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return const LoginScreen();
                          }
                        )
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kPrimaryColor
                      ),
                      child: Row(
                        children: [
                          Text(
                            "COMEÇAR",
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.arrow_forward,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), 
        ],
      ),
    );
  }
}
