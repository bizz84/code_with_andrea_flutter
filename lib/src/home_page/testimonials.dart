import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/home_page/testimonial_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TestimonialsHeader extends StatelessWidget {
  const TestimonialsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth > Breakpoints.tablet
        ? 36.0
        : (screenWidth > 640 ? 27.0 : 24.0);
    final spacing = screenWidth > Breakpoints.tablet ? 56.0 : 32.0;
    return Column(
      children: [
        Text(
          'Over 25,000 enrolled students',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            height: 1.11,
            color: Colors.white,
          ),
        ),
        SizedBox(height: spacing),
      ],
    );
  }
}

class TestimonialsGrid extends StatelessWidget {
  const TestimonialsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 928 ? 3 : (screenWidth > 640 ? 2 : 1);
    return SliverPadding(
      padding: EdgeInsets.symmetric(
          horizontal: sliverHorizontalPadding(screenWidth)),
      sliver: SliverStaggeredGrid(
        // Widget seems to get confused when crossAxisCount changes
        // This ensures a new widget is created when crossAxisCount changes
        key: ValueKey(crossAxisCount),
        gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24,
          staggeredTileCount: 7,
          staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) =>
              TestimonialCard(data: TestimonialCardData.allTestimonials[index]),
          childCount: 7,
        ),
      ),
      //),
    );
  }
}
