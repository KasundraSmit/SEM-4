import 'package:flutter/material.dart';
import 'package:smit_project/sproject/page2.dart';


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Text(
              "Food Menu",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange,
                  decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(height: 2),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Choose your best food have a great day",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color:Colors.orange,

                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                        "assets/images/a.jpg",
                           height: 70,
                         ),
                         ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color:Colors.orange,

                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/d.jpg",
                          height: 80,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color:Colors.orange,

                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/e.jpg",
                          height: 80,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color:Colors.orange,

                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/e.jpg",
                          height: 80,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("More",
              style: TextStyle(fontSize: 40),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                color: Colors.grey.shade400,
                height: 200,
                width: width/2.5,
                child: Image.asset("assets/images/l.jpg",fit: BoxFit.cover) ,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                color: Colors.grey.shade400,
                height: 200,
                width: width/2.5 ,
                child: Image.asset("assets/images/q.jpg",fit: BoxFit.cover) ,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: (width / 3) - 40, vertical: 6),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                'order now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
