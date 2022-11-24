import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/details.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/watchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchListPage> {
  Future<List<MyWatchList>> fetchToDo() async {
    var url =
        Uri.parse('https://assignment-2-pbp.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // decode the response into the json form
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // convert the json data into ToDo object
    List<MyWatchList> listWatchList = [];
    for (var d in data) {
      if (d != null) {
        listWatchList.add(MyWatchList.fromJson(d["fields"]));
      }
    }

    return listWatchList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("My Watch List"),
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
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "My Watch List list is empty :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: snapshot.data![index].watched ? Colors.green:Colors.yellow ,
                                  width: 3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: snapshot.data![index].watched ? Colors.green:Colors.yellow, blurRadius: 2.0)
                                ]),
                            child: ListTile(

                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].title}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                                leading: Checkbox(
                                  checkColor: Colors.white,
                                  value: snapshot.data![index].watched,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      snapshot.data![index].watched =
                                      !snapshot.data![index].watched;
                                    });
                                  },
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>
                                          MyDetailsPage(
                                              title: snapshot.data![index].title,
                                              rating: snapshot.data![index].rating,
                                              releaseDate: snapshot.data![index].releaseDate,
                                              review: snapshot.data![index].review,
                                              watched: snapshot.data![index].watched))
                                  );
                                }
                            ),

                          ));
                }
              }
            }));
  }
}
