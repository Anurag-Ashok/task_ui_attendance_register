import 'package:flutter/material.dart';
import 'package:task_ui/pages/loginScreen.dart';
import 'package:task_ui/widgets/textField.dart';
import 'package:task_ui/widgets/textFieldBottom.dart';

class changePassword extends StatefulWidget {
  const changePassword({super.key});

  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(1000, 233, 232, 248),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "PASSWORD",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  fontFamily: 'poppins'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            image: DecorationImage(
                                image: AssetImage("assets/people.jpeg"),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 5),
                      child: Text(
                        'New Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    custom_text_field(
                      enabled: true,
                      hintText: "Enter your new password",
                      isPassword: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 5),
                      child: Text(
                        'Re-enter New Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    custom_text_field_bottom(
                      enabled: true,
                      hintText: "Re-enter your new pasword",
                      isPassword: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(1000, 137, 193, 30)),
                        shadowColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginScreen(),
                            ));
                      },
                      child: const Text(
                        'SAVE CHANGES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
