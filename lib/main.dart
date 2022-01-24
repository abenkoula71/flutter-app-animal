import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List a = ["🐱", "🐕", "✨", "🥰"];

    List b = [
      {'name': 'Brown Kutta', 'distance': 'distance (4k)','color':0x55ffb732,'img':'img/dog.png'},
      {'name': 'Brown Kutta', 'distance': 'distance (8k)','color':0x556dcdff,'img':'img/cat.png'},
      {'name': 'Brown Kutta', 'distance': 'distance (800m)','color':0x559188e3,'img':'img/oi.png'}
    ];
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                      color: Colors.black45, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Color(0xffffb732),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 10, top: 30, bottom: 30),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xff9188e3),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  'Street pets need our protection.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                )),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 180),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffffb732),
                                  borderRadius: BorderRadius.circular(10)),
                              alignment: Alignment.center,
                              child: Text(
                                'Donate Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                  Container(margin: EdgeInsets.only(left: 190), decoration: BoxDecoration(image: DecorationImage(image: AssetImage('img/back.png'))),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: a.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 80,
                    height: 80,
                    margin:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.black12)),
                    child: Center(
                        child: Text(
                      a[index],
                      style: TextStyle(fontSize: 25),
                    )),
                  );
                },
              ),
            ),
            Text(
              'Nearby Pets',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: b.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 320,
                    decoration: BoxDecoration(
                        color: Color(b[index]['color']),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Expanded(flex: 2, child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(b[index]['img']))),)),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.only(top: 20, left: 30),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${b[index]['name']}',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xffffb732),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '${b[index]['distance']}',
                                          style: TextStyle(
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ],
                                )))
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
