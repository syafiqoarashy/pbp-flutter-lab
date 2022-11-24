import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/watchlist_page.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Budget Data"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Adding clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Routing the menu to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'Counter Program')),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget Info'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Budget Data'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              for (var i in BudgetData.storedData)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: Column(
                    children: [
                      ListTile(
                          title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(i[0], style: TextStyle(fontSize: 20)),
                          Text(i[3].toString().substring(0, 10),
                              style: TextStyle(fontSize: 12)),
                        ],
                      )),
                      ListTile(
                          title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${i[1].toString()}\$',
                              style: TextStyle(fontSize: 14)),
                          Text('${i[2]}', style: TextStyle(fontSize: 14)),
                        ],
                      )),
                    ],
                  )),
                )
            ],
          ),
        ),
      ),
    );
  }
}
