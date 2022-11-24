import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/watchlist_page.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/watchlist.dart';

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage({Key? key,
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
    required this.watched,
  }) : super(key: key);
  final title;
  final rating;
  final releaseDate;
  final review;
  final watched;
  @override
  State<MyDetailsPage> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Detail'),
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
                  MaterialPageRoute(
                      builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(45),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Back"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text('${widget.title}',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 36))
                  ),

                ],
              )
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Release Date: ',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text('${widget.releaseDate}',
                      style: TextStyle(
                          fontSize: 18))
                ],
              )
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Rating: ',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text('${widget.rating}',
                      style: TextStyle(
                          fontSize: 18)),
                  Text('/5',
                      style: TextStyle(
                          fontSize: 18))
                ],
              )
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Status: ',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  widget.watched ?
                  Text('Watched',
                      style: TextStyle(
                          fontSize: 18)):
                  Text('Not watched',
                      style: TextStyle(
                          fontSize: 18)),

                ],
              )
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Review:',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18)),

    ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child:
                  Text('${widget.review}',
                      style: TextStyle(
                          fontSize: 18)),
                )


              ],
            ),
          ),
          ],

              ),
      );
  }
}