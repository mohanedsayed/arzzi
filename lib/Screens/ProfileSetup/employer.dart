import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import '../../constants.dart';
import '../Login/components/background.dart';

class Employer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Lets set you up for getting some jobs done'),
              RoundedInputField(
                hintText: 'Name',
              ),
              PageDivider(),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text('Now fill in your job requirments'),
              RoundedInputField(
                icon: Icons.account_circle_outlined,
                hintText: 'Age',
              ),
              DropdownButton(
                hint: Text('choose the skills you need'),
                items: [
                  DropdownMenuItem(
                    child: Text('mm'),
                  )
                ],
                onChanged: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PageDivider extends StatelessWidget {
  const PageDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 30,
      endIndent: 30,
      thickness: 3,
      color: kPrimaryLightColor,
    );
  }
}
