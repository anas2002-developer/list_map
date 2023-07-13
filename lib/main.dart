import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrChat = [
    {
    "name" :  "anas",
    "phone" : "+91 7060997580",
    "unread" : "2"
  },
    {
      "name" :  "aman",
      "phone" : "+91 7500431307",
      "unread" : "5"
    },
    {
      "name" :  "shruti",
      "phone" : "+91 8171592676",
      "unread" : "7"
    },
    {
      "name" :  "nikhil",
      "phone" : "+91 6773784939",
      "unread" : "2"
    },
    {
      "name" :  "palki",
      "phone" : "+91 3899949828",
      "unread" : "8"
    },
    {
      "name" :  "varun",
      "phone" : "+91 4367439390",
      "unread" : "9"
    },
    {
      "name" :  "anas",
      "phone" : "+91 7060997580",
      "unread" : "2"
    },
    {
      "name" :  "aman",
      "phone" : "+91 7500431307",
      "unread" : "5"
    },
    {
      "name" :  "shruti",
      "phone" : "+91 8171592676",
      "unread" : "7"
    },
    {
      "name" :  "nikhil",
      "phone" : "+91 6773784939",
      "unread" : "2"
    },
    {
      "name" :  "palki",
      "phone" : "+91 3899949828",
      "unread" : "8"
    },
    {
      "name" :  "varun",
      "phone" : "+91 4367439390",
      "unread" : "9"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: ListView(
          children: arrChat.map((value) => Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              color: Colors.grey.shade200,
              child: ListTile(
                leading: Icon(Icons.person_pin, size: 44, ),
                title: Text(value["name"].toString(), style: TextStyle(fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),),
                subtitle: Text(value["phone"].toString(), style: TextStyle(fontSize: 13, color: Colors.grey, fontStyle: FontStyle.italic),),
                trailing: CircleAvatar(backgroundColor: Colors.amber, child: Text(value["unread"].toString(), style: TextStyle(fontSize:12, color: Colors.white),), radius: 10,),
              ),
            ),
          )).toList()


        // body: ListView(
        //   children: arrList.map((value) => Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(height: 20, width: double.infinity,color: Colors.cyan, child: Center(child: Text(value)),),
        //   )).toList(),
        )
    );
  }
}
