import 'dart:async';
import 'dart:math';

import 'package:arzzi2/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../components/rounded_input_field.dart';
import '../../constants.dart';
import '../Login/components/background.dart';

class Employer extends StatefulWidget {
  @override
  _EmployerState createState() => _EmployerState();
}

class _EmployerState extends State<Employer> {
  List skills = ['Flutter dev', 'Ios dev', 'Data analyst', 'smallPP'];

  int age = 21;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Lets set you up for getting some jobs done'),
              RoundedInputField(
                hintText: 'Your Name Please',
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Now fill in your worker requirments',
                style: TextStyle(fontSize: 20),
              ),
              PageDivider(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text('Age :$age'),
              Slider(
                value: age.toDouble(),
                onChanged: (newvalue) {
                  setState(() {
                    age = newvalue.round();
                  });
                },
                label: age.toString(),
                min: 18,
                max: 60,
              ),
              PageDivider(),
              Text('Skill Set'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: MultiSelectBottomSheetField(
                  title: Text('Select Skills'),
                  items: skills.map((e) => MultiSelectItem(e, e)).toList(),
                  onConfirm: null,
                  listType: MultiSelectListType.CHIP,
                ),
              ),
              PageDivider(),
              Text('Job Duration')
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
