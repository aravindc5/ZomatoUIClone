import 'package:flutter/material.dart';
import 'package:zomatoui/data/app_data.dart';

class CollectionCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardImageUrl.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      cardImageUrl[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        const Color(0xCC000000),
                        const Color(0x00000000),
                        const Color(0x00000000),
                        const Color(0xCC000000),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categoryData[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2),
                        ),
                        Text(
                          placesData[index],
                          style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
