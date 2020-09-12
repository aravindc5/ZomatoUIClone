import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zomatoui/data/app_data.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: const SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: BoxCategory(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        'ORDER AGAIN',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    FlatButton(
                      onPressed: null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'view history',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return LastOrderedCategoryWidget(
                    index: index,
                  );
                }),
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
            }, childCount: hotels.length),
          ),
        ],
      ),
    );
  }
}
