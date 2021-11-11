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
          child: Row(
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
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
      sliver: LayoutGrid(
        columnSizes: [1.fr, 24.px, 1.fr],
        rowSizes: [
          auto, // auto size height
          40.px, // spacing
          auto, // auto size height
        ],
        children: [
          GridPlacement(
            columnStart: 0,
            columnSpan: 1,
            rowStart: 0,
            rowSpan: 1,
            child: ItemCard(data: ItemCardData.allItemsData[0]),
          ),
          GridPlacement(
            columnStart: 2,
            columnSpan: 1,
            rowStart: 0,
            rowSpan: 1,
            child: ItemCard(data: ItemCardData.allItemsData[1]),
          ),
          GridPlacement(
            columnStart: 0,
            columnSpan: 1,
            rowStart: 2,
            rowSpan: 1,
            child: ItemCard(data: ItemCardData.allItemsData[2]),
          ),
          GridPlacement(
            columnStart: 2,
            columnSpan: 1,
            rowStart: 2,
            rowSpan: 1,
            child: ItemCard(data: ItemCardData.allItemsData[3]),
          ),
        ],
      ),
    );
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
