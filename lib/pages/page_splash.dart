import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Find Cozy House \nto Stay and Happy',
                style: blackTextMedium.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Stop membuang banyak waktu \npada tempat yang tidak habitable',
                style: greyTextLight.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Explore Now',
                    style: whiteTextMedium.copyWith(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
