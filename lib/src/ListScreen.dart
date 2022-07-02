import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List person = [
    {
      'name': "lana",
      'salary': "10",
      'image':
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZW1wbG95ZWUlMjBmYWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      'skil': "php"
    },
    {
      'name': "muhamad",
      'salary': "5",
      'image':
          "https://media.istockphoto.com/photos/closeup-portrait-of-japanese-mature-businessman-in-the-office-picture-id1352888268?b=1&k=20&m=1352888268&s=170667a&w=0&h=ScrKPKaYfKbRv2Z_s4LgsYFHLkNFk3-ZUf0I7YgNDeQ=",
      'skil': "java"
    },
    {
      'name': "sarmand",
      'salary': "15",
      'image':
          "https://images.unsplash.com/photo-1529421308418-eab98863cee4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGVtcGxveWVlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      'skil': "flutter"
    },
    {
      'name': "rami",
      'salary': "20",
      'image':
          "https://images.unsplash.com/photo-1529421308418-eab98863cee4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGVtcGxveWVlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      'skil': "c++"
    },
    {
      'name': "taman",
      'salary': "13",
      'image':
          "https://images.unsplash.com/photo-1529421308418-eab98863cee4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGVtcGxveWVlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      'skil': "c#"
    },
  ];
  // TODO: implement widget
  Widget pocket(v) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 5, bottom: 10, end: 5),
      padding: EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  '${v['image']}',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${v['name']}",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1h/${v['salary']}\$",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 194, 98, 98)),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              "${v['skil']}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[300]),
            ),
          ),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 35),
                  padding: EdgeInsetsDirectional.all(5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.pink.shade400, Colors.white],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1487073240288-854ac7f1bb3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'),
                    radius: 125,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "find free lancer",
              style: TextStyle(
                  fontSize: 25, wordSpacing: 1.5, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: person.map((all) => pocket(all)).toList(),
            )
          ]),
        ),
      ),
    );
  }
}
