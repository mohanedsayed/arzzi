import 'package:arzzi2/Screens/Login/components/background.dart';
import 'package:arzzi2/components/rounded_button.dart';
import 'package:flutter/material.dart';

import 'employer.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'DO YOU WANT TO WORK OR HIRE ??',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              RoundedButton(
                text: 'Employer',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Employer(),
                    ),
                  );
                },
              ),
              RoundedButton(
                text: 'Worker',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Employer(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
