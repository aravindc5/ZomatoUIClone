import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:zomatoui/data/app_data.dart';

class RestaurentLists extends StatelessWidget {
  final int index;

  const RestaurentLists({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return detailedSingleRestaurentCard(context, index);
  }
}

Widget detailedSingleRestaurentCard(BuildContext context, int index) {
  return Row(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        hotels[index].imageUrl,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotels[index].name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        hotels[index].type,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        hotels[index].price,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        hotels[index].offer,
                        style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 12,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 30,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      hotels[index].rating,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}
