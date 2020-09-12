import 'package:flutter/material.dart';
import 'package:zomatoui/models/data_model.dart';

List<String> categoryData = [
  "Trending Places",
  "Pure Veg Places",
  "Under 30 mins",
  "New Arrivals",
  "Healthy Foods",
  "Trending Places",
  "Pure Veg Places",
  "Under 30 mins",
  "New Arrivals",
  "Healthy Foods"
];

List<String> cardImageUrl = [
  "https://images.unsplash.com/photo-1525351484163-7529414344d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1542691457-cbe4df041eb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1528699633788-424224dc89b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1519676867240-f03562e64548?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1533089860892-a7c6f0a88666?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1475566718667-b6fe2e251c6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1525351484163-7529414344d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1542691457-cbe4df041eb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1528699633788-424224dc89b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1519676867240-f03562e64548?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
];

List<Hotel> hotels = [
  Hotel(
    name: 'Delhi Darbar',
    lastOrderdetail: 'Last Ordered 2 days ago',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmZBZuygkLxgqZc28h-aMaot1BbUCPKMyjNg&usqp=CAU",
    rating: "4.0",
    time: "25 mins",
    type: "South Indian, Chinese, Biriyani",
    offer: "40% OFF- use code TRYNEW",
    price: "Rs 100 for one | 43 mins",
  ),
  Hotel(
    name: 'KFC',
    lastOrderdetail: 'Last Ordered 5 days ago',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfmZb-DepbcsDnRj2cUIPxGtszSZIWjDZ77A&usqp=CAU",
    rating: "4.2",
    time: "25 mins",
    type: "Burgers, Shakes",
    offer: "20% OFF- use code TRYNEW",
    price: "Rs 200 for one | 33 mins",
  ),
  Hotel(
    name: 'Dindigul Thalappakatti',
    lastOrderdetail: 'Last Ordered 1 days ago',
    imageUrl:
        "https://media.gettyimages.com/photos/the-hyderabadi-chicken-biryani-is-photographed-at-akshaya-thursday-9-picture-id168918303?s=2048x2048",
    rating: "4.3",
    time: "35 mins",
    type: "Biriyani, South Indian",
    offer: "10% OFF- use code TRYNEW",
    price: "Rs 300 for one | 20 mins",
  ),
  Hotel(
    name: 'Burger King',
    lastOrderdetail: 'Last Ordered 2 weeks ago',
    imageUrl: "http://assets.stickpng.com/thumbs/5842996fa6515b1e0ad75add.png",
    rating: "3.8",
    time: "40 mins",
    type: "Burgers, Shakes",
    offer: "30% OFF- use code TRYNEW",
    price: "Rs 150 for one | 33 mins",
  ),
  Hotel(
    name: 'Delhi Darbar',
    lastOrderdetail: 'Last Ordered 2 days ago',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmZBZuygkLxgqZc28h-aMaot1BbUCPKMyjNg&usqp=CAU",
    rating: "4.0",
    time: "25 mins",
    type: "South Indian, Chinese, Biriyani",
    offer: "40% OFF- use code TRYNEW",
    price: "Rs 100 for one | 43 mins",
  ),
  Hotel(
    name: 'KFC',
    lastOrderdetail: 'Last Ordered 5 days ago',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfmZb-DepbcsDnRj2cUIPxGtszSZIWjDZ77A&usqp=CAU",
    rating: "4.2",
    time: "25 mins",
    type: "Burgers, Shakes",
    offer: "20% OFF- use code TRYNEW",
    price: "Rs 200 for one | 33 mins",
  ),
  Hotel(
    name: 'Dindigul Thalappakatti',
    lastOrderdetail: 'Last Ordered 1 days ago',
    imageUrl:
        "https://media.gettyimages.com/photos/the-hyderabadi-chicken-biryani-is-photographed-at-akshaya-thursday-9-picture-id168918303?s=2048x2048",
    rating: "4.3",
    time: "35 mins",
    type: "Biriyani, South Indian",
    offer: "10% OFF- use code TRYNEW",
    price: "Rs 300 for one | 20 mins",
  ),
  Hotel(
    name: 'Burger King',
    lastOrderdetail: 'Last Ordered 2 weeks ago',
    imageUrl: "http://assets.stickpng.com/thumbs/5842996fa6515b1e0ad75add.png",
    rating: "3.8",
    time: "40 mins",
    type: "Burgers, Shakes",
    offer: "30% OFF- use code TRYNEW",
    price: "Rs 150 for one | 33 mins",
  ),
  Hotel(
    name: 'Delhi Darbar',
    lastOrderdetail: 'Last Ordered 2 days ago',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSmZBZuygkLxgqZc28h-aMaot1BbUCPKMyjNg&usqp=CAU",
    rating: "4.0",
    time: "25 mins",
    type: "South Indian, Chinese, Biriyani",
    offer: "40% OFF- use code TRYNEW",
    price: "Rs 100 for one | 43 mins",
  ),
  Hotel(
    name: 'KFC',
    lastOrderdetail: 'Last Ordered 5 days ago',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfmZb-DepbcsDnRj2cUIPxGtszSZIWjDZ77A&usqp=CAU",
    rating: "4.2",
    time: "25 mins",
    type: "Burgers, Shakes",
    offer: "20% OFF- use code TRYNEW",
    price: "Rs 200 for one | 33 mins",
  ),
  Hotel(
    name: 'Dindigul Thalappakatti',
    lastOrderdetail: 'Last Ordered 1 days ago',
    imageUrl:
        "https://media.gettyimages.com/photos/the-hyderabadi-chicken-biryani-is-photographed-at-akshaya-thursday-9-picture-id168918303?s=2048x2048",
    rating: "4.3",
    time: "35 mins",
    type: "Biriyani, South Indian",
    offer: "10% OFF- use code TRYNEW",
    price: "Rs 300 for one | 20 mins",
  ),
  Hotel(
    name: 'Burger King',
    lastOrderdetail: 'Last Ordered 2 weeks ago',
    imageUrl: "http://assets.stickpng.com/thumbs/5842996fa6515b1e0ad75add.png",
    rating: "3.8",
    time: "40 mins",
    type: "Burgers, Shakes",
    offer: "30% OFF- use code TRYNEW",
    price: "Rs 150 for one | 33 mins",
  ),
];

const List<String> filters = [
  'Filters',
  'Rating 4.0',
  'Safe And Hygienic',
  'Fastest Delivery',
  'Rating',
  'Cost'
];

const customIcons = [
  Icons.local_florist,
  Icons.flash_on,
  Icons.flight,
  Icons.new_releases,
  Icons.person,
];
const customColors = [
  Colors.green,
  Colors.redAccent,
  Colors.deepOrangeAccent,
  Colors.orange,
  Colors.blue
];

const placesData = [
  "23 places",
  "13 places",
  "3 places",
  "14 places",
  "22 places",
  "8 places",
  "10 places",
  "2 places",
  "8 places",
  "7 places",
];
