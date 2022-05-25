// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.white,
          ),
      home: const Testing(),
    );
  }
}

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

List<Map<String, dynamic>> data = [
  {
    'card_name': 'Curent Balance',
    'amount': 'Rs. 47,400.00',
    'icon': Icons.comment_bank_rounded,
    'bank_name': 'HDFC Bank',
    'card_no': 'xxxx xxxx xxxx 9233',
    'Expire': 'Exp Date',
    'date': '12/22',
    'bgcolor': Colors.lightBlue
  },
  {
    'card_name': 'Curent Balance',
    'amount': 'Rs. 47,400.00',
    'icon': Icons.comment_bank_rounded,
    'bank_name': 'HDFC Bank',
    'card_no': 'xxxx xxxx xxxx 9233',
    'Expire': 'Exp Date',
    'date': '12/22',
    'bgcolor': Colors.deepPurpleAccent
  },
  {
    'card_name': 'Curent Balance',
    'amount': 'Rs. 47,400.00',
    'icon': Icons.comment_bank_rounded,
    'bank_name': 'HDFC Bank',
    'card_no': 'xxxx xxxx xxxx 9233',
    'Expire': 'Exp Date',
    'date': '12/22',
    'bgcolor': Colors.redAccent
  },
];

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.account_circle_rounded,
          color: Colors.black38,
          size: 30,
        ),
        shadowColor: Colors.amber,
        backgroundColor: Colors.white,
        title: RichText(
          text: const TextSpan(
            text: 'Good Morning!  \n',
            children: <TextSpan>[
              TextSpan(
                  text: 'Jammie Lannister',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
        ),
        actions: const [
          Icon(
            Icons.add,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              text: '\n May ',
              children: <TextSpan>[
                TextSpan(
                    text: '2019',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: CarouselSlider(
              items: data.map((e) {
                return ItemCard(
                    cardname: e['card_name'],
                    amount: e['amount'],
                    color: e['bgcolor'],
                    icon: e['icon'],
                    bankname: e['bank_name'],
                    cardno: e['card_no'],
                    expire: e['Expire'],
                    date: e['date']);
              }).toList(),
              options: CarouselOptions(
                  height: 200,
                  autoPlay: false,
                  viewportFraction: 0.5,
                  enlargeCenterPage: false),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Acct Outstanding \n ',
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Rs.22,300.00',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Minimium Due \n ',
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Rs.4.300.00  ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          // RichText(
          //   text: const TextSpan(
          //     text: 'Acct Outstanding \n ',
          //     children: <TextSpan>[
          //       TextSpan(
          //           text: 'Rs.22,300.00',
          //           style: TextStyle(fontWeight: FontWeight.bold)),
          //     ],
          //   ),
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Due date \n ',
                      children: <TextSpan>[
                        TextSpan(
                          text: '06 May 2019 ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Pay by \n ',
                      children: <TextSpan>[
                        TextSpan(
                            text: '04 May 2019 ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 90),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('2 days left'))),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Pay Now'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      //Icon(Icons.bar_chart_sharp,),
                      Text(
                        '\n Transaction History : \n \n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'Life style retail store  \n ',
                              children: <TextSpan>[
                                TextSpan(
                                  text: '6 May, 5:16 PM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black26),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'Rs.2,999.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 90),
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              'Follow',
                              style: TextStyle(color: Colors.pink),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              BottomNavigationBar(
                backgroundColor: Colors.white54,
                currentIndex: 0,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Icons.home,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Icons.notification_add,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Icons.supervised_user_circle_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Icons.query_builder_rounded,
                      size: 30,
                    ),
                  ),
                ],
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                selectedFontSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.cardname,
      required this.amount,
      required this.color,
      required this.icon,
      required this.bankname,
      required this.cardno,
      required this.expire,
      required this.date})
      : super(key: key);
  final String cardname;
  final String amount;
  final Color color;
  final IconData icon;
  final String bankname;
  final String cardno;
  final String expire;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(cardname),
              Text(amount),
            ],
          ),
          Row(
            children: [
              Icon(
                icon,
                color: Colors.amberAccent,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(bankname),
                    Text(cardno),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(expire),
                  Text(date),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
