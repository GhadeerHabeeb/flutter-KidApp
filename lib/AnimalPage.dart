import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';

class animalPage extends StatelessWidget {
  int animalID;
  animalPage(this.animalID);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: animallist[animalID].color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  )),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(40),
                        padding: EdgeInsets.all(20),
                        child: Hero(
                            tag: '${animalID}',
                            child: Image.asset(animallist[animalID].iconImage)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animallist[animalID].name,
                      style: TextStyle(
                        fontFamily: "Patrick",
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      animallist[animalID].paragraph,
                      style: TextStyle(
                        fontFamily: "Patrick",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "LifeSpan",
                      style: TextStyle(
                        fontFamily: "Patrick",
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      animallist[animalID].lifespan,
                      style: TextStyle(
                        fontFamily: "Patrick",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "speed",
                      style: TextStyle(
                        fontFamily: "Patrick",
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          animallist[animalID].speed,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 7,
                          ),
                          decoration: BoxDecoration(
                              color: animallist[animalID].color,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                          padding: EdgeInsets.all(7),
                          child: Text(
                            'More',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Patrick",
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
