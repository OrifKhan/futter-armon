import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prColor = Color(0xFFFF2F08);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: Text(
          "Cheese Pizza",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.favorite,
              color: prColor,
              size: 28,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Mized Pizza with beff, chilli and chease',
              style: TextTheme().bodySmall?.copyWith(
                    color: Colors.black26,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: prColor,
                  size: 20,
                ),
                Text(
                  '4.7',
                  style: TextTheme().bodySmall,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Image.asset('Pizza.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Calories',
                      style: TextTheme().bodySmall,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '120',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(
                  children: [
                    Text(
                      'Volume',
                      style: TextTheme().bodySmall,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '12 inch',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.black38,
                ),
                Column(
                  children: [
                    Text(
                      'Distance',
                      style: TextTheme().bodySmall,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '1 KM',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Order',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.black45,
                          ),
                          Text(
                            '01',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black),
                          ),
                          Icon(
                            CupertinoIcons.minus_circle,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Devlivery',
                        style: TextTheme().bodySmall,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Express',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Price',
                        style: TextTheme().bodySmall,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$8.99',
                        style: TextStyle(
                            color: prColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: prColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add to Cart',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_circle_outline_rounded,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
