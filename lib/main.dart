import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI Widgets",
    debugShowCheckedModeBanner: false,
    //home: Home(),
    home: Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: getListView(),
    ),
  ));
}

List<String> getListItems(){
  return List<String>.generate(1000, (counter) => "Item $counter");
}
Widget getListView() {
  var listItems = getListItems();
  var listView = ListView.builder(
    itemBuilder: (context, index){
      return ListTile(leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
      onTap: (){
        debugPrint("${listItems[index]} clicked");
      },);
    },
//    children: <Widget>[
//      ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("Landscape"),
//        subtitle: Text("Beautiful view"),
//        trailing: Icon(Icons.wb_sunny),
//        onTap: () => debugPrint("Landscape clicked"),
//      ),
//      ListTile(
//          leading: Icon(Icons.flight_takeoff),
//          title: Text("Take off Johannesburg"),
//          subtitle: Text("0800h"),
//          onTap: () => debugPrint("Take off clicked")
////        trailing: Icon(Icons.wb_sunny),
//          ),
//      ListTile(
//          leading: Icon(Icons.flight_land),
//          title: Text("Landing DRC"),
//          subtitle: Text("1100h"),
//          onTap: () => debugPrint("Landing clicked")
////        trailing: Icon(Icons.wb_sunny),
//          ),
//      Text("Oh hey",)
//    ],

  );
  return listView;
}
