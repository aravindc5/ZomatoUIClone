import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zomatoui/data/app_data.dart';

class FilterOptions extends StatelessWidget {
  final int index;

  const FilterOptions({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Container(
        height: 10,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[300], width: 2),
        ),
        child: FlatButton(
          onPressed: () => null,
          child: Text(
            filters[index],
            style: TextStyle(
                color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
