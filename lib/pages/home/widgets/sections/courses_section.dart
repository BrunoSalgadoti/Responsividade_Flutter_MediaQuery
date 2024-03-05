import 'package:flutter/material.dart';
import 'package:responsividade_no_flutter/breakpoints.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints){
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
              mainAxisExtent: 254,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index){
              return const CourseItem();
            },
          );
        }
    );
  }
}
