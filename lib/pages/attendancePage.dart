import 'package:flutter/material.dart';
import 'package:task_ui/widgets/drawer.dart';

class attendancePage extends StatefulWidget {
  const attendancePage({super.key});

  @override
  State<attendancePage> createState() => _attendancePageState();
}

class _attendancePageState extends State<attendancePage> {
  final List<String> dates = [
    "1",
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Color _ContainerColor = Colors.white;
  int selectedDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(10000, 233, 232, 248),
        elevation: 0,
        title: const Text(
          "ATTENDANCE",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, fontFamily: 'poppins'),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                    image: AssetImage("assets/people.jpeg"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
      drawerEnableOpenDragGesture: false,
      drawer: drawer(),
      key: _scaffoldKey,
      backgroundColor: const Color.fromARGB(1000, 233, 232, 248),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Text(
                            "January",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: 160,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Text(
                            "2024",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3417,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Text(
                            'Mon',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text('Tue',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Wed',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('The',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Fri',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Sat',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('Sun',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 10),
                          itemCount: 31,
                          itemBuilder: (BuildContext ctx, index) {
                            bool checked = index == selectedDateIndex;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedDateIndex = index;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _ContainerColor,
                                    border: Border.all(
                                        color: Colors.green, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(dates[index]),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "LEAVE REQUESTS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListView(
                  children: const [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date"),
                          Text(
                            "Wed, 17 2024",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      trailing: Text(
                        "Approved",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date"),
                          Text(
                            "Sat, 27 2024",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      trailing: Text(
                        "Approved",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date"),
                          Text(
                            "Mon, 29 2024",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      trailing: Text(
                        "Pending",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
