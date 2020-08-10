import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int SelectIndex=0;
  final List<String> Categories=['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Theme.of(context).primaryColor,
      height:70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
          itemBuilder:(context, index){
          return GestureDetector(
            onTap: (){
              setState(() {
                SelectIndex = index;
              });
            },
              child:Padding(
                padding: EdgeInsets.symmetric( horizontal: 20 , vertical: 20),
                child: Text(
                  Categories[index],
                  style: TextStyle(
                    fontSize: 20,
                    color: index == SelectIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
          );
          },

      ),
    );
  }
}
