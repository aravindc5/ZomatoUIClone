import 'package:flutter/material.dart';
import 'package:zomatoui/data/app_data.dart';

class BoxCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: customIcons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 17,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey[300], width: 1),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      customIcons[index],
                      color: customColors[index],
                    ),
                    Center(
                        child: Text(
                      categoryData[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 1.2,
                          fontFamily: 'Roboto',
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
