import 'package:flutter/material.dart';

PreferredSizeWidget mobileAppBar() {
  return AppBar(
    toolbarHeight: 56,
    backgroundColor: Colors.black,
    centerTitle: true,
    title: const Text(
      'Flutter',
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          )),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ))
    ],
  );
}
