import 'package:flutter/material.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

PreferredSizeWidget webAppBar() {
  return AppBar(
    toolbarHeight: 72,
    backgroundColor: Colors.black,
    title: Row(
      children: [
        const Text(
          'Flutter',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(width: 32),
        const WebAppBarResponsiveContent(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            )),
        const SizedBox(width: 24),
        SizedBox(
          height: 38,
          child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Fazer Login',
                style: TextStyle(color: Colors.white),
              )),
        ),
        const SizedBox(width: 8),
        SizedBox(
          height: 39,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
              foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black),
            ),
            onPressed: () {},
            child: const Text('Cadastre-se'),
          ),
        )
      ],
    ),
    actions: [],
  );
}
