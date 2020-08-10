import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat/models/message_model.dart';
import 'package:chat/screen/chat_screen.dart';
class FavouriteContacts extends StatefulWidget {
  @override
  _FavouriteContactsState createState() => _FavouriteContactsState();
}

class _FavouriteContactsState extends State<FavouriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
      Padding(
      padding: EdgeInsets.only(left: 30 , right: 30 ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Favourite Contacts' ,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
            ),),
          IconButton(
              icon:Icon(
                  Icons.more_horiz ,
                  color: Colors.grey.shade700,
                  size: 14),
              onPressed:(){}
          ),
        ],
      ),
    ),
        Container(
          height: 99,
          child: ListView.builder(
              itemCount:favorites.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:(BuildContext context , int index){
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favorites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(width: 6.0),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
    ),
        ),
        ],
      ),
    );

  }
}
