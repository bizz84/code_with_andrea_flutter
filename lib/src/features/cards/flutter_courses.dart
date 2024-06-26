import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/cards/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FlutterCoursesHeader extends StatelessWidget {
  const FlutterCoursesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: Breakpoints.desktop.toDouble(),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flutter courses',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 16),
              Text(
                'Invest in yourself with my high-quality Flutter courses.',
                style: DesktopTextTheme()
                    .paragraph18
                    .copyWith(color: Colors.white),
              ),
              SizedBox(
                height:
                    screenWidth > Breakpoints.twoColLayoutMinWidth ? 32 : 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlutterCoursesContent extends StatelessWidget {
  const FlutterCoursesContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount =
        screenWidth >= Breakpoints.twoColLayoutMinWidth ? 2 : 1;
    return SliverPadding(
      padding: EdgeInsets.symmetric(
          horizontal: sliverHorizontalPadding(screenWidth)),
      sliver: SliverAlignedGrid.count(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 24,
        crossAxisSpacing: 40,
        itemCount: ItemCardData.allCoursesData.length,
        itemBuilder: (context, index) {
          return ItemCard(data: ItemCardData.allCoursesData[index]);
        },
      ),
    );
  }
}
