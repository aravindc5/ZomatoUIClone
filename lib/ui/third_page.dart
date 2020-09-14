import 'package:flutter/material.dart';
import 'package:zomatoui/data/app_data.dart';

import '../widgets/widgets.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                    ),
                    const Text(
                      'Home-Address...',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
                CircleProfile()
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Card(
                elevation: 2.5,
                child: TextField(
                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey[200],
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey[200], width: 1),
                    ),
                    hintText: 'Search for restaurants, cuisines...',
                  ),
                ),
              ),
            ),
          )),
          SliverToBoxAdapter(
              child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.06,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  return FilterOptions(
                    index: index,
                  );
                }),
          )),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return RestaurentLists(
                index: index,
              );
            }, childCount: 3),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: const Text(
                'PLACES A LITTLE FURTHER AWAY',
                style: const TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return RestaurentLists(
                index: index,
              );
            }, childCount: 4),
          ),
        ],
      ),
    );
  }
}
