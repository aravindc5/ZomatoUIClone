import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zomatoui/data/app_data.dart';

class LastOrderedCategoryWidget extends StatelessWidget {
  final int index;
  LastOrderedCategoryWidget({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          singleRestaurentCard(index),
          singleRestaurentCard(index + 1)
        ],
      ),
    );
  }
}

Widget singleRestaurentCard(int index) {
  return Row(
    children: [
      Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              hotels[index].imageUrl,
              fit: BoxFit.cover,
            ),
          )),
      Container(
        margin: EdgeInsets.all(10),
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              hotels[index].name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              hotels[index].lastOrderdetail,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              hotels[index].time,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      )
    ],
  );
}
