import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> trendingList = [
    {
      'name': 'PRINTED SARI',
      'type': 'BANARASI',
      'price': "\$349",
      'off': '50% off',
      'path': 'images/image2.png'
    },
    {
      'name': 'PRINTED SARI',
      'type': 'BANARASI',
      'price': "\$349",
      'off': '50% off',
      'path': 'images/image2.png'
    },
    {
      'name': 'PRINTED SARI',
      'type': 'BANARASI',
      'price': "\$349",
      'off': '50% off',
      'path': 'images/image2.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/image1.png"))),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.225,
                    left: 20,
                    right: 20,
                    child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Trending  ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  TextSpan(text: "products  ", style: TextStyle(fontSize: 20)),
                ])),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemCount: trendingList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Stack(
                        children: [
                          Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: new BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          trendingList[index]['path'])))),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.70,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.share, color: Colors.white),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.07,
                            left: MediaQuery.of(context).size.width * 0.02,
                            child: Text(trendingList[index]['name'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.1,
                            left: MediaQuery.of(context).size.width * 0.02,
                            child: Text(trendingList[index]['type'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.17,
                            left: MediaQuery.of(context).size.width * 0.02,
                            child: Text(trendingList[index]['price'],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                )),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.2,
                            left: MediaQuery.of(context).size.width * 0.02,
                            child: Text(trendingList[index]['off'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.18,
                              left: MediaQuery.of(context).size.width * 0.65,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 70,
                                  height: 35,
                                  child: Center(
                                      child: Text("View",
                                          textAlign: TextAlign.center)),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                ),
                              ))
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
