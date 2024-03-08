import 'package:flutter/material.dart';
import 'package:task_ui/pages/changePassword.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(children: [
        DrawerHeader(
            child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                const Text(
                  "MENU",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: 'poppins'),
                ),
              ],
            ),
          ],
        )),
        const ListTile(
          textColor: Colors.white,
          tileColor: const Color.fromARGB(1000, 137, 193, 30),
          leading: Icon(Icons.calendar_month),
          title: const Text(
            "ATTENDANCE",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(
            "EXPENSE",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const changePassword(),
                ));
          },
          leading: Icon(Icons.vpn_key_rounded),
          title: Text(
            "CHANGE PASSWORD",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        )
      ]),
    );
  }
}
