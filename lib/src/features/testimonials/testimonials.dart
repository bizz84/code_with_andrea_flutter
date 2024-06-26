import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/testimonials/testimonial_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TestimonialsHeader extends StatelessWidget {
  const TestimonialsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth > Breakpoints.tablet
        ? 36.0
        : (screenWidth > 640 ? 27.0 : 24.0);
    final spacing = screenWidth > Breakpoints.tablet ? 56.0 : 32.0;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: sliverHorizontalPadding(screenWidth)),
      child: Column(
        children: [
          Text(
            'Over 25,000 enrolled students',
            textAlign: TextAlign.center,
            style: AppTextTheme.latoTextStyle.copyWith(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              height: 1.11,
              color: Colors.white,
            ),
          ),
          SizedBox(height: spacing),
        ],
      ),
    );
  }
}

// Fallback implementation since StaggeredTestimonialsGrid doesn't work!
class TestimonialsLayoutGrid extends StatelessWidget {
  const TestimonialsLayoutGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount =
        screenWidth >= 905 ? 3 : (screenWidth >= 600 ? 2 : 1);
    if (crossAxisCount >= 3) {
      return SliverPadding(
        padding: EdgeInsets.symmetric(
            horizontal: sliverHorizontalPadding(screenWidth)),
        sliver: SliverAlignedGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          itemCount: TestimonialCardData.allTestimonials.length,
          itemBuilder: (context, index) {
            return TestimonialCard(
                data: TestimonialCardData.allTestimonials[index]);
          },
        ),
      );
    } else if (crossAxisCount >= 2) {
      return SliverPadding(
        padding: EdgeInsets.symmetric(
            horizontal: sliverHorizontalPadding(screenWidth)),
        sliver: SliverAlignedGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          itemCount: TestimonialCardData.allTestimonials.length,
          itemBuilder: (context, index) {
            return TestimonialCard(
                data: TestimonialCardData.allTestimonials[index]);
          },
        ),
      );
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding(screenWidth),
                vertical: 12,
              ),
              child: TestimonialCard(
                  data: TestimonialCardData.allTestimonials[index]),
            );
          },
          childCount: 4,
        ),
      );
    }
  }
}

// FTW: Adding this causes a weird scrolling bug at the end of the page!
// class StaggeredTestimonialsGrid extends StatelessWidget {
//   const StaggeredTestimonialsGrid({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final crossAxisCount = screenWidth > 928 ? 3 : (screenWidth > 640 ? 2 : 1);
//     return SliverPadding(
//       padding: EdgeInsets.symmetric(
//           horizontal: sliverHorizontalPadding(screenWidth)),
//       sliver: SliverAlignedGrid.count(
//         crossAxisCount: crossAxisCount,
//         mainAxisSpacing: 24,
//         crossAxisSpacing: 24,
//         itemBuilder: (context, index) {
//           return TestimonialCard(
//             data: TestimonialCardData.allTestimonials[index],
//           );
//         },
//         itemCount: 7,
//         // Widget seems to get confused when crossAxisCount changes
//         // This ensures a new widget is created when crossAxisCount changes
//         key: ValueKey(crossAxisCount),
//       ),
//       //),
//     );
//   }
// }
