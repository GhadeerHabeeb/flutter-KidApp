import 'package:flutter/material.dart';
import 'package:flutter_application_1/AnimalPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.orange,
            size: 40,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Learn",
          style: TextStyle(
            fontFamily: "Patrick",
            color: Colors.black,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[100],
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 5,
              top: 5,
              left: 0,
              bottom: 5,
            ),
            width: 50,
            decoration: BoxDecoration(
                color: Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: FittedBox(
              child: Image.asset("images/c_tiger.png"),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          getPageContainer(0, "c_crab.png", "Crab",
              "A fish can cough.. Really!", Colors.red),
          getPageContainer(1, "c_fish.png", "Fish",
              "A Tiger can cough.. Really!", Colors.lightBlueAccent),
          getPageContainer(2, "c_elephant.png", "Elephant",
              "A Crab can cough.. Really!", Colors.grey),
          getPageContainer(3, "c_deer.png", "Deer",
              "A Tiger can cough.. Really!", Colors.orangeAccent),
          getPageContainer(4, "c_tiger.png", "Tiger", "A  can cough.. Really!",
              Colors.black),
          getPageContainer(5, "c_rabbit.png", "Rabbit",
              "A Tiger can cough.. Really!", Colors.pink),
          getPageContainer(6, "c_bluebird.png", "blueBird",
              "A Tiger can cough.. Really!", Colors.lightBlue),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Container getPageContainer(
      int id, String imgName, String title, String subText, Color colors) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => animalPage(id)));
        },
        child: Container(
          margin: EdgeInsets.only(
            left: 85,
            top: 25,
            right: 15,
          ),
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                  left: -65,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Hero(
                      tag: "${id}",
                      child: Image(
                        image: AssetImage("images/$imgName"),
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                  )),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: "Patrick",
                                color: Colors.white),
                          ),
                          margin: EdgeInsets.only(
                            left: 120,
                            top: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        subText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Patrick",
                        ),
                      ),
                      margin: EdgeInsets.only(left: 130),
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                    )
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
