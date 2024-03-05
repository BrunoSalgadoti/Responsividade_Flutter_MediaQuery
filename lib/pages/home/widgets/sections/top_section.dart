import 'package:flutter/material.dart';
import 'package:responsividade_no_flutter/breakpoints.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1170) {
        return AspectRatio(
          aspectRatio: 3.0,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.0,
                child: Image.network(
                  'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                      color: Colors.black,
                      elevation: 8,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 450,
                        child: const Column(
                          children: [
                            Text(
                              'Aprenda Flutter com este curso',
                              style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Bora aprender responsividade em Flutter com o curso da Ûdemy '
                              'por apenas R\$: 22,90. Qualidade garantia que '
                              'só a Ûdemy oferece.',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            CustomSearchField()
                          ],
                        ),
                      )))
            ],
          ),
        );
      }
      if (maxWidth >= mobileBreakpoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                      color: Colors.black,
                      elevation: 8,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 350,
                        child: const Column(children: [
                          Text(
                            'Aprenda Flutter com este curso',
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bora aprender responsividade em Flutter com o curso da Ûdemy '
                            'por apenas R\$: 22,90. Qualidade garantia que '
                            'só a Ûdemy oferece.',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          CustomSearchField()
                        ]),
                      )))
            ],
          ),
        );
      }
      return Column(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
              'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aprenda Flutter com este curso',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                'Bora aprender responsividade em Flutter com o curso da Ûdemy '
                    'por apenas R\$: 22,90. Qualidade garantia que '
                    'só a Ûdemy oferece.',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(height: 10),
              CustomSearchField()
            ],
          ),
          )
        ],
      );
    });
  }
}
