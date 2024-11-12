// import 'package:flutter/material.dart';

// class GroceryData extends StatefulWidget {
//   const GroceryData({super.key});

//   @override
//   State<GroceryData> createState() => _GroceryDataState();
// }

// class _GroceryDataState extends State<GroceryData> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
class GroceryData {
  static List<Map<String, dynamic>> groceryProducts = [
    {
      "id": 1,
      "name": "Apple",
      "category": "Fruits",
      "price": 1.50,
      "quantity": "1 kg",
      "inStock": true,
      "imageUrl":
          "https://clipart-library.com/image_gallery2/Apple-Fruit-PNG.png",
    },
    {
      "id": 2,
      "name": "Milk",
      "category": "Dairy",
      "price": 0.99,
      "quantity": "1 liter",
      "inStock": true,
      "imageUrl": "https://www.pngmart.com/files/5/Milk-PNG-File.png",
    },
    {
      "id": 3,
      "name": "Bread",
      "category": "Bakery",
      "price": 1.20,
      "quantity": "1 loaf",
      "inStock": false,
      "imageUrl": "https://m.media-amazon.com/images/I/41avDiSCeHL.jpg",
    },
    {
      "id": 4,
      "name": "Eggs",
      "category": "Dairy",
      "price": 2.30,
      "quantity": "12 pcs",
      "inStock": true,
      "imageUrl":
          "https://media.gettyimages.com/id/1404679048/photo/eggs.jpg?s=612x612&w=0&k=20&c=9VOmQWAYmRXN7ct09XqK-KC4znd0yfsIKSmHe4OY0Gc=",
    },
    {
      "id": 5,
      "name": "Banana",
      "category": "Fruits",
      "price": 0.30,
      "quantity": "1 kg",
      "inStock": true,
      "imageUrl":
          "https://imgs.search.brave.com/M9gRfhdMqXwz8c8OP80QqzAFWHs2zv30L0lqG4PgDAU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA4LzI0LzMwLzk1/LzM2MF9GXzgyNDMw/OTU4Ml9LeEdYUnZC/ZjVoUUdDZVMxaEhX/QzY5ZVhvdEpacUJL/Zy5qcGc",
    },
    {
      "id": 6,
      "name": "Rice",
      "category": "Grains",
      "price": 2.00,
      "quantity": "1 kg",
      "inStock": true,
      "imageUrl":
          "https://imgs.search.brave.com/ktJ80-uUN6D0SpRV_l2asua8rdyrOkx6VkmPiITVk78/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTUz/NzM3ODQxL3Bob3Rv/L3JpY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWxmTzdp/TFQwVXNERHpyYTB1/Qk9zTjFydnIyZDVP/RXRyRzJ1d2J0czMz/X2M9",
    },
    {
      "id": 7,
      "name": "Tomato",
      "category": "Vegetables",
      "price": 1.00,
      "quantity": "1 kg",
      "inStock": true,
      "imageUrl":
          "https://imgs.search.brave.com/mNGbWvrcHQM36yZyZidjAG9fDFOfidW0tsmVhzIhUfo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzI3Lzk2LzIz/LzM2MF9GXzMyNzk2/MjMzMl82bWI1alFM/blRPamhZZVhNTDd2/NDVIYzVlRUQyR1lP/RC5qcGc",
    },
    {
      "id": 8,
      "name": "Cheese",
      "category": "Dairy",
      "price": 3.00,
      "quantity": "200 g",
      "inStock": true,
      "imageUrl":
          "https://imgs.search.brave.com/alG_QjyrfIxc-bkeFgWY_P1La83K8g1NdQOEu3a1PCU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM2/Njk3Nzk0MS9waG90/by9jbG9zZS11cC1v/Zi1jaGVlc2Utb24t/Y2hlZXNlLWJvYXJk/LWxhdHZpYS5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9NXQ4/V2hWd3JxbWY2N2s4/cXNCMlB1WG1RSGkz/VkVZZEVId3FDX3k4/QWJVTT0",
    },
    {
      "id": 9,
      "name": "Olive Oil",
      "category": "Condiments",
      "price": 6.50,
      "quantity": "500 ml",
      "inStock": true,
      "imageUrl":
          "https://imgs.search.brave.com/ks-JvWjU-6HKhN52GiCB8dNE7xj1JsDwCvPbVER4N0M/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTgy/MTg3ODA0L3Bob3Rv/L2p1Zy1vZi1vbGl2/ZS1vaWwtd2l0aC0z/LW9saXZlcy1ieS10/aGUtc2lkZS5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9NzNM/Vjcyb0JEYkFOSEdH/ZnVSWE1wRjBHQTJ3/ek9XWU1VSmJxWUxW/cnMtcz0",
    },
  ];
}
