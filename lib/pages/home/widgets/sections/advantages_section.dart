import 'package:flutter/material.dart';
import 'package:responsividade_no_flutter/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage({required String title, required String subTitle}) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(title,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              Text(
                subTitle,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      );
    }

    Widget buildVerticalAdvantage({required String title, required String subTitle}) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 8),
          Text(title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      );
    }

    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= mobileBreakpoint) {
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage(title: '+45.000 alunos', subTitle: 'Didática Garantida'),
              buildHorizontalAdvantage(title: '+45.000 alunos', subTitle: 'Didática Garantida'),
              buildHorizontalAdvantage(title: '+45.000 alunos', subTitle: 'Didática Garantida'),
            ],
          ),
        );
      }
      return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Row(
          children: [
            Expanded(child: buildVerticalAdvantage(title: '+45.000 alunos', subTitle: 'Didática Garantida')
            ),
            const SizedBox(width: 4),
            Expanded(child: buildVerticalAdvantage(title: '+45.000 alunos', subTitle: 'Didática Garantida')
            ),
            const SizedBox(width: 4),
            Expanded(child: buildVerticalAdvantage(title: '+45.000 alunos', subTitle: 'Didática Garantida')
            ),
          ],
        ),
      );
    });
  }
}
