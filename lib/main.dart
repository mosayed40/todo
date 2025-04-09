import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 87, 175, 247),
          onPressed: () {
            setState(() {});
          },
          child: Icon(Icons.add, color: Colors.white),
        ),
        appBar: AppBar(
          title: const Text("Test Project"),
          backgroundColor: Color(0xFF20A0EB),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 173, 170, 170),
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "images/mo1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text("Mostafa Sayed"),
                          subtitle: Text("mostafa.2950@gmail.com"),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home_filled),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Account"),
                  leading: Icon(Icons.account_balance_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Order"),
                  leading: Icon(Icons.check_box),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Sbout us"),
                  leading: Icon(Icons.help),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Contact"),
                  leading: Icon(Icons.phone_android),
                  onTap: () {},
                ),
                ListTile(
                  hoverColor: Colors.redAccent,
                  title: Text("SigOut"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
              
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(15),
            child: Text("hello"),
          ),
        ),
      ),
    );
  }
}
