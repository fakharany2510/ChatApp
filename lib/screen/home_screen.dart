import 'package:flutter/material.dart';
import 'package:chat/widgets/category_selector.dart';
import 'package:chat/widgets/recent_chats.dart';
import 'package:chat/widgets/favorite_contacts.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right:10 , left:10 , top:40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.menu , color: Colors.white , size: 20,), onPressed:(){}),
                Text('Chats' ,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Theme.of(context).accentColor,
                ),),
                IconButton(icon: Icon(Icons.search , color: Colors.white, size: 20,), onPressed:(){}),

              ],
            ),
          ),

          Column(
            children: [
              CategorySelector(),
               Container(
                 height: 434 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30)),
                  color: Theme.of(context).accentColor,
                ),
                 child: Column(
                   children: [
                    FavouriteContacts(),
                     RecentChats(),
                   ],
                 ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
