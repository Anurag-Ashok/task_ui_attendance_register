import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_ui/pages/imageCapturePage.dart';
import 'package:task_ui/widgets/textField.dart';
import 'package:task_ui/widgets/textFieldBottom.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/936bf69361f6563658b575c5a17604a3.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/image.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.2)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 120),
                          child: Center(
                              child: Image.asset(
                                  'assets/WhatsApp Image 2024-02-12 at 9.13 3.png')),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 3),
                              child: Text(
                                'Username',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            custom_text_field(
                              enabled: true,
                              hintText: 'Enter your username',
                              isPassword: false,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, bottom: 3),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            custom_text_field_bottom(
                              enabled: true,
                              hintText: 'Enter your password',
                              isPassword: false,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 200, bottom: 30),
                          child: Text(
                            'forget you password?',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)))),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(1000, 137, 193, 30)),
                                shadowColor:
                                    MaterialStatePropertyAll(Colors.grey),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const imgCapturePage(),
                                    ));
                              },
                              child: const Text(
                                'LOG IN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
