# ASSIGNMENT 7

## Stateless Widget vs Stateful Widget

Stateless Widgets are Widgets that state will not change/be altered once they are built. While Stateful Widgets are widgets that can change their descriptions dynamically during their lifetimes.

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
