import 'package:flutter/material.dart';
import 'package:hackheads/components/data.dart';
import 'package:hackheads/components/widgets.dart';
import 'package:flutter/widgets.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              LoginSphere(img: 'assets/questionshead.png'),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Questions',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          '1.',
                          style: TextStyle(
                              fontSize: 36.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Flexible(
                          child: Text(
                            softWrap: true,
                            'Academic Percentage in Operating Systems',
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    RadioListTile(
                      activeColor: Color(0xFFF28F3B),
                      title: Text('81% - 100%'),
                      value: '81% - 100%',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Color(0xFFF28F3B),
                      title: Text('61% - 80%'),
                      value: '61% - 80%',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Color(0xFFF28F3B),
                      title: Text('40% - 60%'),
                      value: '40% - 60%',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Color(0xFFF28F3B),
                      title: Text('Below 40%'),
                      value: 'Below 40%',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF28F3B)),
                  onPressed: () {},
                  child: Text('NEXT >')),
              SizedBox(
                height: height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
