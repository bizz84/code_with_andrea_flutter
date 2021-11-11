import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:flutter/material.dart';

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
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 40.0,
          crossAxisSpacing: 24.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * ((index + 1) % 9)],
              child: Text('grid item $index'),
            );
          },
          childCount: 4,
        ),
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
