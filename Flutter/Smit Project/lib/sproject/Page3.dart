import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
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
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height / 2.2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 38),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            InkWell(onTap: (){
                              Navigator.pop(context);
                            },
                                child: const Icon(Icons.arrow_back)),
                            const Icon(Icons.menu),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            ),
                        child: Row(
                          children: [
                            const Expanded(child: Icon(Icons.search)),
                            const Expanded(
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
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                'assets/images/p.jpg')),
                      ),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 0,top: 30),
                width: 40,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                height: height/2.2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      getCustomRow(
                          'assets/images/u.jpeg',
                          'Fried Chicken',
                          'Performing hot restart...'
                              'Waiting for connection from debug service on Chrome...',
                          '\$4.39',
                          context),
                      getCustomRow(
                          'assets/images/t.jpeg',
                          'Fried Chicken',
                          'Performing hot restart...'
                              'Waiting for connection from debug service on Chrome...',
                          '\$4.39',
                          context),
                      getCustomRow(
                          'assets/images/w.jpeg',
                          'Fried Chicken',
                          'Performing hot restart...'
                              'Waiting for connection from debug service on Chrome...',
                          '\$4.39',
                          context),
                      getCustomRow(
                          'assets/images/n.jpeg',
                          'Fried Chicken',
                          'Performing hot restart...'
                              'Waiting for connection from debug service on Chrome...',
                          '\$4.39',
                          context),

                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.home,
              color: Colors.orange,
            ),
            const Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            const Icon(
              Icons.widgets,
              color: Colors.grey,
            ),
            const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            const Icon(
              Icons.person,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Widget getCustomRow(image, name, about, price, BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height/7,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,width: double.infinity,fit: BoxFit.cover,height: 90,
                )),
          ),
          Expanded(child: Container()),
          Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600,fontSize: 20),
                  ),
                  Text(
                    about,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    price,
                    style: const TextStyle(color: Colors.orange, fontSize: 18),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
