import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/home_page/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class FeaturedTutorialsHeader extends StatelessWidget {
  const FeaturedTutorialsHeader({Key? key}) : super(key: key);

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Featured Tutorials',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                  if (screenWidth > Breakpoints.twoColLayoutMinWidth) ...[
                    const Spacer(),
                    const ExploreTutorialsButton(),
                  ],
                ],
              ),
              SizedBox(
                height:
                    screenWidth > Breakpoints.twoColLayoutMinWidth ? 52 : 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeaturedTutorialsContent extends StatelessWidget {
  const FeaturedTutorialsContent({Key? key}) : super(key: key);

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
                  child: ItemCard(data: ItemCardData.allItemsData[i]),
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
              child: ItemCard(data: ItemCardData.allItemsData[index]),
            );
          },
          childCount: 4,
        ),
      );
    }
  }
}

class FeaturedTutorialsFooter extends StatelessWidget {
  const FeaturedTutorialsFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= Breakpoints.twoColLayoutMinWidth) {
      return Column(
        children: const [
          SizedBox(height: 40),
          ExploreTutorialsButton(),
        ],
      );
    } else {
      // TODO: return something more lightweight
      return const SizedBox();
    }
  }
}

class ExploreTutorialsButton extends StatelessWidget {
  const ExploreTutorialsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: AppColors.secondary,
            onPrimary: AppColors.primary7,
            splashFactory: NoSplash.splashFactory,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        child: Text(
          'Explore More Tutorials  →',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.bold, color: AppColors.primary7),
        ),
        onPressed: () {},
      ),
    );
  }
}
