import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
            'https://images.pexels.com/photos/3082341/pexels-photo-3082341.jpeg',
        fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Flexible(
          child: AutoSizeText(
              'Criação de APPs Android e iOS com Flutter - crie 16 Apps',
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const AutoSizeText(
          'Aluno: Bruno Salgado',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const AutoSizeText(
          'Ûdemy: por: R\$: 22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
