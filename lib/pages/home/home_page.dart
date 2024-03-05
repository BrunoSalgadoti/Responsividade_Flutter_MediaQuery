import 'package:flutter/material.dart';
import 'package:responsividade_no_flutter/breakpoints.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/sections/advantages_section.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/sections/courses_section.dart';
import 'package:responsividade_no_flutter/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint ? mobileAppBar() : webAppBar(),
        drawer: constraints.maxWidth < mobileBreakpoint
            ? const Drawer(
                backgroundColor: Colors.white,
              )
            : null,
        body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: ListView(
                  children: const [
                    TopSection(),
                    SizedBox(height: 15),
                    AdvantagesSection(),
                    CoursesSection(),
                  ],
                )
            )
        ),
      );
    });
  }
}
