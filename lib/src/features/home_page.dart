import 'package:code_with_andrea_flutter/src/features/about_me/about_me.dart';
import 'package:code_with_andrea_flutter/src/features/app_header/app_header.dart';
import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/features/cards/featured_tutorials.dart';
import 'package:code_with_andrea_flutter/src/features/cards/flutter_courses.dart';
import 'package:code_with_andrea_flutter/src/features/email_footer/email_footer.dart';
import 'package:code_with_andrea_flutter/src/features/footer/footer.dart';
import 'package:code_with_andrea_flutter/src/features/intro/intro.dart';
import 'package:code_with_andrea_flutter/src/features/testimonials/testimonials.dart';
import 'package:code_with_andrea_flutter/src/features/section_separator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: AppColors.neutral6,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: AppHeader()),
            SliverToBoxAdapter(child: Intro()),
            SliverToBoxAdapter(child: SectionSeparator()),
            SliverToBoxAdapter(child: FeaturedTutorialsHeader()),
            FeaturedTutorialsContent(), // already a Sliver
            SliverToBoxAdapter(child: FeaturedTutorialsFooter()),
            SliverToBoxAdapter(child: SectionSeparator()),
            SliverToBoxAdapter(child: FlutterCoursesHeader()),
            FlutterCoursesContent(),
            SliverToBoxAdapter(child: SectionSeparator()),
            SliverToBoxAdapter(child: TestimonialsHeader()),
            TestimonialsLayoutGrid(),
            SliverToBoxAdapter(child: SectionSeparator()),
            SliverToBoxAdapter(child: AboutMe()),
            SliverToBoxAdapter(child: EmailFooterSection()),
            SliverToBoxAdapter(child: Footer()),
          ],
        ),
      ),
    );
  }
}
