import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/watchlist_page.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class BudgetData {
  static List storedData = [];
}

class _MyFormPageState extends State<MyFormPage> {
  TextEditingController dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _title = "";
  int amount = 0;
  String? budgetType;
  List<String> listBudgetType = ['Expense', 'Income'];
  List filledData = [];
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Add Budget Info"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            filledData.add(_title);
            filledData.add(amount);
            filledData.add(budgetType);
            filledData.add(date);
            BudgetData.storedData.add(filledData);
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 15,
                  child: Container(
                    child: ListView(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      shrinkWrap: true,
                      children: <Widget>[
                        Center(child: const Text('Data successfully stored')),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyFormPage()),
                            );
                          },
                          child: Text('Return'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyDataPage()),
                            );
                          },
                          child: Text(
                            'Go to Budget Data',
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
        label: const Text('Save'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Using padding of 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Example: Hello World!",
                      labelText: "Title",
                      // Added a circular border to make it neater
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed
                    onChanged: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    // Added behavior when data is saved
                    onSaved: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Full Name cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Using padding of 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      hintText: "Example: 10000",
                      labelText: "Amount",
                      // Added a circular border to make it neater
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed
                    onChanged: (String? value) {
                      setState(() {
                        amount = int.parse(value!);
                      });
                    },
                    // Added behavior when data is saved
                    onSaved: (String? value) {
                      setState(() {
                        amount = int.parse(value!);
                      });
                    },
                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Amount cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: dateController,
                    decoration: InputDecoration(
                      labelText: "Date",
                      // Added a circular border to make it neater
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed

                    readOnly: true,
                    onTap: () async {
                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050));
                      if (date != null) {
                        String formattedDate = date.toString().substring(0, 10);

                        setState(() {
                          dateController.text = formattedDate;
                        });
                      }
                    },
                    // Added behavior when data is saved

                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Date cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    hint: Text("Choose Type"),

                    underline: const SizedBox(),
                    // Initial Value
                    value: budgetType,
                    // Array list of items
                    items: listBudgetType.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        if (newValue == null) budgetType = "Expense";
                        budgetType = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
