import 'package:flutter/material.dart';
import 'package:task_ui/pages/attendancePage.dart';

class imgCapturePage extends StatefulWidget {
  const imgCapturePage({super.key});

  @override
  State<imgCapturePage> createState() => _imgCapturePageState();
}

class _imgCapturePageState extends State<imgCapturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(1000, 233, 232, 248),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.68,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage("assets/Untitled design.png"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Image.asset('assets/Rectangle 169.png'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => attendancePage(),
                    ));
              },
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                        color: Color.fromARGB(1000, 255, 0, 0), width: 5)),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(1000, 255, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "ATTENDANCE",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: 'poppins'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Capture your photo to mark\n   your today’s attendance"),
            ),
          ],
        ),
      ),
    );
  }
}
