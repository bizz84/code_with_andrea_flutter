import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/home_page/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class FlutterCoursesHeader extends StatelessWidget {
  const FlutterCoursesHeader({Key? key}) : super(key: key);

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
                    .headline4!
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
  const FlutterCoursesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount =
        screenWidth >= Breakpoints.twoColLayoutMinWidth ? 2 : 1;
    if (crossAxisCount >= 2) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: sliverHorizontalPadding(screenWidth)),
          child: LayoutGrid(
            columnSizes: [1.fr, 1.fr],
            rowSizes: const [auto, auto], // auto size height
            rowGap: 40,
            columnGap: 24,
            children: [
              for (var i = 0; i < 4; i++)
                GridPlacement(
                  columnStart: i % 2,
                  columnSpan: 1,
                  rowStart: i ~/ 2,
                  rowSpan: 1,
                  child: ItemCard(data: ItemCardData.allCoursesData[i]),
                ),
            ],
          ),
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
              child: ItemCard(data: ItemCardData.allCoursesData[index]),
            );
          },
          childCount: 4,
        ),
      );
    }
  }
}
