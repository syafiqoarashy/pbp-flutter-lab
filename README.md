# ASSIGNMENT 7

## Stateless Widget vs Stateful Widget

Stateless Widgets are Widgets that state will not change/be altered once they are built. They do not change by themselves through some internal action or behavior. Stateless widgets only have final properties defined during its constructions.
While Stateful Widgets are widgets whose state can be altered once they are built. The state can change multiple times in their lifetime. Classes that inherit “Stateful Widget” are immutable, but they are paired with a State class that represents the current state of the widget.

#### Difference of Stateless and Stateful

| Stateless | Stateful |
| --- | --- |
| Static widgets | Dynamic widgets |
| Do not have a state | Have an internal state |
| Do not depend on any data change | Can be updated during runtime based on data change |

## Widgets Used in This Assignment

1. Container: The container widget is used to "contain" more widgets/child inside it. It'll surround the child with padding and applies further constraints  to the padded extent. Surrounding the container are empty spaces(margin).
2. AppBar: In this instance, the AppBar is used to display the title of the app. But it can also be used to contain a toolbar or more widgets. AppBar is usually placed at the top of the screen.
3. FloatingActionButton: Just like its name, it is a circular button used as a primary action in an application which hovers over the apps content.

## Function of setState()

setState() is used to notify the framework to trigger a rebuild of the view to see immediate changes implied by the new state. So, whenever you update your UI data model, make sure you call setState(). It is recommended to use the setState() method only to wrap actual changes to the state, NOT to do computation associated with the change. Any variable that is a child of the parent who calls the setState() function will be affected by the rebuild.

## Difference of const and final

Both const and final cannot be reassigned. However, when you have a value that is computed during compile time, use const. Any const variable must be created from data that can be calculated at compile time. Final, though, are used when you don't know the value at compile time, therefore the value must be known at runtime. 

## Implementation

Create the flutter app using,
```
flutter create counter_7
```

I then run
```
flutter run
```

Afterwards I opened lib/main.dart and added a few things,
First, I added a function to decrement the counter.

<img width="617" alt="Screen Shot 2022-11-10 at 9 15 44 AM" src="https://user-images.githubusercontent.com/101589777/200983898-6492f762-7d17-41d2-9bf1-06f6ff1991e9.png">

Then, I changed the alignment of the title in AppBar to left.

<img width="595" alt="Screen Shot 2022-11-10 at 9 17 01 AM" src="https://user-images.githubusercontent.com/101589777/200984082-824734f6-3c88-49ee-a227-dadd829d8b23.png">

Afterwards, I used the ternary conditional operator that checks whether the counter is even or odd and will show the text and style according to that condition.

<img width="389" alt="Screen Shot 2022-11-10 at 9 19 02 AM" src="https://user-images.githubusercontent.com/101589777/200984324-30156d8d-79e9-4acb-ba0b-82720ea9577a.png">

Lastly, I added a container to the floating action button and a row widget as its child. The row widget then contains two floating action button to increment or decrement the counter. Also, to implement the bonus, I used the ternary conditional operator again so that it'll display ONLY the add button when the counter is zero.

<img width="770" alt="Screen Shot 2022-11-10 at 9 22 32 AM" src="https://user-images.githubusercontent.com/101589777/200984785-40098d6c-3230-4b21-93a4-5999fbbe2f39.png">

Here is the application when ran:

<img width="520" alt="Screen Shot 2022-11-10 at 9 24 40 AM" src="https://user-images.githubusercontent.com/101589777/200985116-66f4ad88-d594-47aa-bae5-91f0a9214ca6.png">

<img width="520" alt="Screen Shot 2022-11-10 at 9 24 46 AM" src="https://user-images.githubusercontent.com/101589777/200985137-71480c55-b360-47d9-b919-d6d9f3c9a0da.png">

# ASSIGNMENT 8

## Difference Between Navigator.push and Navigator.pushReplacement

In any application, navigating through different pages is essential and defines the workflow of the application. **Routing** is the way to handle the navigation. The navigator class provides navigation capabilities in the flutter app. The Navigator.push() method will add/push a route to the stack of routes managed by the Navigator. This in turn will navigate to a newer page. The Navigator.pushReplacement() method, however, replaces the item which is on the top of the stack with the new page. This method removes the ability for the user to go back to the previous page.

## List all the Widgets Used

1. AppBar: an AppBar usually consists of a toolbar and potentially other widgets, also it is usually placed as a fixed-height widget at the top of the screen. In this instance, we use it to store the title and the drawer widget.
2. Drawer: Drawers are panel that slides horizontally from the edge of a Scaffold. In this project, we used it to store routings to other pages.
3. Scaffold: It implements the basic Material Design visual layout structure.
4. ListView: The most commonly used scrolling widget. Usually displays its children one after another in the scroll direction.
5. SingleChildScrollView: A box in which a single widget can be scrolled. Makes sure that if the contents exceed the screen size (in thie example, the data on the budget data page) it is scrollable.
6. Text: Same as its name, the text widget displays a string of text that can be styled accordingly.
7. Padding: Pretty straightforward, this widget is usually used to shrink the constraint and causing the child to layout at a smaller size. Creating empty space around the child.
8. Center: This widget will center all its child within itself.
9. Row: This widget will display its children in a horizontal array.
10. Column: This widget will display its children in a vertical array.
11. Container: The container widget is used to "contain" more widgets/child inside it. It'll surround the child with padding and applies further constraints  to the padded extent. Surrounding the container are empty spaces(margin).
12. FloatingActionButton: Just like its name, it is a circular button used as a primary action in an application which hovers over the apps content.
13. Card: A panel with slightly rounded corners and elevated shadow.
14. Form: Usually a widget used to group together multiple form field widgets.
15. ListTile: Is a single fixed-height row that is usually filled with some text alongside leading/trailing icon.

## Name the Types of Events that exist in Flutter

Some events in flutter includes:

OnChanged: Called whe the user initiates a change (insert/delete text)

onPressed: Called when the user taps the chip usually for buttons

onTap: Same as onPressed but is also used wth other widgets.

onSaved: Called when the form is saved.

onHover: Is triggered when a pointer moves into the position of the widget but is not pressed.

These are a few of the events that exists in Flutter. There are ofcourse many more events in Flutter.

## Explain how the Navigator Works

A navigator is a widget that manages a set of Child widgets using the stack discipline. The navigator manages a stack of Route objects and provides two ways for managing the stack. A Route is an abstraction for a "page" of an app. A Navigator can push or pop to help users move from to different Routes. The Navigator.push() method as mentioned before adds a ROute to the stack, while the Navigator.pop() method removes the current Route from the stack.

## Implementation

1. Add a drawer/hamburger menu to the previously created app and add the three navigations on the drawer/hamburger.

<img width="624" alt="Screen Shot 2022-11-17 at 10 05 21 AM" src="https://user-images.githubusercontent.com/101589777/202344898-00869ed1-7c60-4620-9add-b7cdaabd8abb.png">

2. Add a form page and a data page

<img width="167" alt="Screen Shot 2022-11-17 at 10 06 52 AM" src="https://user-images.githubusercontent.com/101589777/202345085-fc0cbc53-2e19-4144-8a35-864ca3b3799d.png">

3. Add all the input elements and save button inside the form page

A screenshot won't fit so i'll put the code here.

```
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
```

4. Save the data inputted by the user into a static list inside the BudgetData class so that it can be used in other .dart files.

<img width="246" alt="Screen Shot 2022-11-17 at 10 10 44 AM" src="https://user-images.githubusercontent.com/101589777/202345552-1306867f-e122-42ea-a364-52b1af25c60b.png">

<img width="415" alt="Screen Shot 2022-11-17 at 10 11 53 AM" src="https://user-images.githubusercontent.com/101589777/202345685-6491c4b0-607d-4508-b697-f43b8ccb34ce.png">

5. Make the data page so that It'll display information based on the submitted data from the form page.

<img width="508" alt="Screen Shot 2022-11-17 at 10 13 00 AM" src="https://user-images.githubusercontent.com/101589777/202345830-b293346f-716b-4ea1-b88a-cf67d026efc5.png">

# ASSIGNMENT 9
## JSON Data
Yes it is possible to retrieve JSON data without creating a model first. How? Flutter has a built-in dart:convert library that includes a straightforward JSON encoder and decoder. You can use the jsonDecode() function where we pass the raw JSON string and then looking up the values you need in the resulting Map<String, dynamic>. Is it better than creating a model before retrieving JSON data? It depends. If we have a smaller project and have minimal models, it maybe the better option.

## List all the Widgets Used
1. AppBar: an AppBar usually consists of a toolbar and potentially other widgets, also it is usually placed as a fixed-height widget at the top of the screen. In this instance, we use it to store the title and the drawer widget.
2. Drawer: Drawers are panel that slides horizontally from the edge of a Scaffold. In this project, we used it to store routings to other pages.
3. Scaffold: It implements the basic Material Design visual layout structure.
4. Row: This widget will display its children in a horizontal array.
5. Column: This widget will display its children in a vertical array.
6. FloatingActionButton: Just like its name, it is a circular button used as a primary action in an application which hovers over the apps content.
7. Padding: Pretty straightforward, this widget is usually used to shrink the constraint and causing the child to layout at a smaller size. Creating empty space around the child.
8. Text: Same as its name, the text widget displays a string of text that can be styled accordingly.
9. ElevatedButton: An elevated button is a label child displayed on a Material widget whose Material.elevation increases when the button is pressed.
10. FutureBuilder: Widget that builds itself based on the latest snapshot of interaction with a Future.

## Mechanism of Data Retrieval
Create the model that adapts to JSON data, use the website Quicktype to achieve this. Afterwards, put the code inside a dart file containing the model. We also have to add the http package to perform an HTTP request. Don't forget also to add 
```<uses-permission android:name="android.permission.INTERNET" />```
inside android/app/src/main/AndroidManifest.xml. Then create the dart file for the page, in that page, import the necessary imports.
```
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:<APP_NAME>/model/to_do.dart';
```
Create a stateful widget for the page, then retrieve the data from our URL that contains our JSON using the http.get method. The JSON data is then serialized. Lastly, to display the data, use FutureBuilder.

## Implementation
1. Create a new dart file for the page and for the model

<img width="206" alt="Screen Shot 2022-11-24 at 10 57 57 AM" src="https://user-images.githubusercontent.com/101589777/203690798-88ffdecb-8b27-4850-ba01-3f3905e74773.png">

<img width="201" alt="Screen Shot 2022-11-24 at 10 58 48 AM" src="https://user-images.githubusercontent.com/101589777/203690907-8d7ad5ac-556f-4294-a057-9697e239abde.png">

2. Create the custom models using Quicktype

<img width="1440" alt="Screen Shot 2022-11-24 at 10 59 45 AM" src="https://user-images.githubusercontent.com/101589777/203691034-35d5503c-bd68-40e8-b730-bf260ab39270.png">

3. Copy the custom model into the dart file for the model

<img width="1001" alt="Screen Shot 2022-11-24 at 11 01 08 AM" src="https://user-images.githubusercontent.com/101589777/203691198-bbf1e045-9b91-49f3-89b3-ba48a609e302.png">

4. Add the drawer so that it can navigate to other pages

<img width="783" alt="Screen Shot 2022-11-24 at 11 03 51 AM" src="https://user-images.githubusercontent.com/101589777/203691554-ac99c041-4377-462d-9b45-375c071348fe.png">

5. Use FutureBuilder to display the data

<img width="662" alt="Screen Shot 2022-11-24 at 11 04 48 AM" src="https://user-images.githubusercontent.com/101589777/203691665-4b4d5c64-0389-4ea4-bb40-93dee9dee748.png">

6. Use ListView.builder for the data representation, inside use the ListTile Widget, if tapped it will navigate into the details page.

<img width="886" alt="Screen Shot 2022-11-24 at 11 06 19 AM" src="https://user-images.githubusercontent.com/101589777/203691857-dce2f8ba-3bf1-4f04-b3c9-f3c4c9c60340.png">

7. Create the dart file for the details page

<img width="136" alt="Screen Shot 2022-11-24 at 11 07 00 AM" src="https://user-images.githubusercontent.com/101589777/203691952-37cdb2ef-3627-43ad-9307-57a063549ea4.png">

8. Create a Stateful Widget inside the details page that has the passed values

<img width="482" alt="Screen Shot 2022-11-24 at 11 08 53 AM" src="https://user-images.githubusercontent.com/101589777/203692175-6c466094-b574-4754-807b-2c8fcf2d65a8.png">

9. Create a column widget that will contain the data as its children

<img width="659" alt="Screen Shot 2022-11-24 at 11 09 48 AM" src="https://user-images.githubusercontent.com/101589777/203692307-819115ce-143f-4dcb-9e94-4ad8226a5f05.png">

10. Create a floating action button that will go back to the watchlist page if it is pressed

<img width="574" alt="Screen Shot 2022-11-24 at 11 11 21 AM" src="https://user-images.githubusercontent.com/101589777/203692539-1505c68d-52fd-483b-b0c2-75f3097873d0.png">

11. Bonus Implementation, use the checkbox widget and add a border as a decoration. The color will change depending on the boolean value of the watched data. The checkbox will change the value of the boolean into the opposite.

<img width="338" alt="Screen Shot 2022-11-24 at 11 36 25 AM" src="https://user-images.githubusercontent.com/101589777/203695270-4b868be3-2b77-4fef-9229-da8352c1634b.png">

<img width="892" alt="Screen Shot 2022-11-24 at 11 36 47 AM" src="https://user-images.githubusercontent.com/101589777/203695301-e4ba3169-ca3a-4633-84ea-9836a6e1a355.png">
