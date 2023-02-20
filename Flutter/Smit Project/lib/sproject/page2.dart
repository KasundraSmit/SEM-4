import 'package:flutter/material.dart';
import 'package:smit_project/sproject/Page3.dart';
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height / 2.1,
            width: width,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height / 2.2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 38),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                            onTap: (){
                      Navigator.pop(context);
                      },
                                child: Icon(Icons.arrow_back)),
                            Icon(Icons.menu),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            ),
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.search)),
                            Expanded(
                              flex: 8,
                              child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: 'Search Food...',
                                    focusedBorder: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width,
                        height: 250,
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                'assets/images/a.jpg')),
                      ),
                    ]),
              ),
              Container(
                width: 40,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: height / 7,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Only today this fast food offer',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 12),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          '\$5.00',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Count the number of disjoint 11 blocks First science '
                  'fiction story to use the word "laser"? A predictor'
                  ' that categorical when larger than a cutoff Carbon fiber',
                  style: TextStyle(
                      height: 1.8,
                      color: Colors.grey.shade600,
                      letterSpacing: 0.8),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page3(),
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
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              color: Colors.orange,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            Icon(
              Icons.widgets,
              color: Colors.grey,
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
