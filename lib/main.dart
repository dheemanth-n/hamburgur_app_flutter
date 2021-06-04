import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hamburger_list.dart';
import 'burger_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
      bottomAppBarColor: Colors.teal,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.orange)
      ),
      home: Hamburger(),
      routes: {BurgerPage.tag: (_)=>BurgerPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburger extends StatefulWidget {
  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [SliverAppBar(
        pinned: true,
        title: Text("Deliver Me"),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
        actions: [IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)],
      ),
      Header(),
      Categories(),
      HamburgerList(row: 1,),
      HamburgerList(row: 2,),
      ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.home,
      ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45),
        ),
              child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(children: [
              Spacer(),
              IconButton(
                icon: Icon(Icons.add_alert),
                color: Colors.white,
                 onPressed: (){},
                 ), 
                  Spacer(),
                  Spacer(),
                  IconButton(
                icon: Icon(Icons.turned_in),
                color: Colors.white,
                 onPressed: (){},
                 ),
                   Spacer(),
                 ],
                 ),
                 ),
        ),
      ),
    );
  }
}
