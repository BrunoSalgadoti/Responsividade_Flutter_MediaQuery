import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:responsividade_no_flutter/pages/home/home_page.dart';

void main() {
  //TODO: 2º - ADICIONAR A MÉTODO DO Device Preview NO MAIN!!!
  runApp(kDebugMode
      ? DevicePreview(
          builder: (_) => const MyApp(),
          enabled: true, //TODO: Desabilita ou habilita o Device Preview
        )
      : const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsivo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),

      //TODO: 3º (Fim configuração) - ADICIONAR A REFERENCIAS DO Device Preview NO MATERIAL APP!!!
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
