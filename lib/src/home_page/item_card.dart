import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:code_with_andrea_flutter/src/tags.dart';
import 'package:flutter/material.dart';

class ItemCardData {
  const ItemCardData({
    required this.imageName,
    required this.title,
    required this.description,
    required this.tags,
    required this.dateFormatted,
    required this.readTime,
  });
  final String imageName;
  final String title;
  final String description;
  final List<String> tags;
  final String dateFormatted;
  final String readTime;

  static const allItemsData = [
    ItemCardData(
      imageName: Constants.tutorial1,
      title: 'How to Parse JSON in Dart/Flutter: The Essential Guide',
      description:
          'Learn how to parse JSON and define type-safe model classes that can handle validation, nullable/optional values, and complex/nested JSON data',
      tags: ['dart', 'flutter', 'networking', 'json'],
      dateFormatted: 'AUG 19, 2021',
      readTime: '16 MIN READ',
    ),
    ItemCardData(
      imageName: Constants.tutorial2,
      title: 'Side Effects in Flutter: What they are and how to avoid them',
      description:
          'Mutating state or calling async code inside the build method can cause unwanted widget rebuilds and unintended behaviour. Here are some examples and rules to follow.',
      tags: ['dart', 'flutter', 'state-management'],
      dateFormatted: 'AUG 03, 2021',
      readTime: '7 MIN READ',
    ),
    ItemCardData(
      imageName: Constants.tutorial3,
      title: 'Responsive layouts in Flutter: Split View and Drawer Navigation',
      description:
          'How to implement a responsive layout in Flutter by using a split view on large screens and drawer navigation on mobile.',
      tags: ['dart', 'flutter', 'layouts', 'state-management', 'riverpod'],
      dateFormatted: 'JUL 26, 2021',
      readTime: '17 MIN READ',
    ),
    ItemCardData(
      imageName: Constants.tutorial4,
      title:
          'Learn Flutter Animations in 8 Minutes + Free Gallery App on GitHub',
      description:
          'Learn how to use the most common Flutter animation APIs with examples and a free gallery app on GitHub.',
      tags: ['dart', 'flutter', 'animations'],
      dateFormatted: 'JUL 16, 2021',
      readTime: '13 MIN READ',
    ),
  ];
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.data}) : super(key: key);
  final ItemCardData data;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.neutral5,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: DecoratedBox(
              // use a custom DecoratedBox to clip the image on the topLeft & topRight corners
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(data.imageName),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
          ),
          Padding(
            // TODO: Responsive
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 16),
                ItemMetadataWidget(
                    startText: data.dateFormatted, endText: data.readTime),
                const SizedBox(height: 16),
                // TODO: Tags
                ItemMetadataTags(tags: data.tags),
                const SizedBox(height: 20),
                Text(
                  data.description,
                  // TODO: Responsive?
                  style: DesktopTextTheme()
                      .paragraph18
                      .copyWith(color: AppColors.neutral2, height: 1.666),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemMetadataWidget extends StatelessWidget {
  const ItemMetadataWidget(
      {Key? key, required this.startText, required this.endText})
      : super(key: key);

  final String startText;
  final String endText;

  @override
  Widget build(BuildContext context) {
    // TODO: Responsive with LayoutBuilder
    return Text(
      '$startText | $endText',
      textAlign: TextAlign.left,
      style:
          DesktopTextTheme().subheadAllCaps.copyWith(color: AppColors.neutral2),
    );
    // TODO: Would be nice to make this work without overflow
    return Row(
      children: [
        Text(
          startText,
          style: DesktopTextTheme()
              .subheadAllCaps
              .copyWith(color: AppColors.neutral2),
        ),
        const SizedBox(width: 10),
        Container(
          height: 16,
          width: 1,
          color: AppColors.neutral2,
        ),
        const SizedBox(width: 10),
        Text(
          endText,
          overflow: TextOverflow.clip,
          style: DesktopTextTheme()
              .subheadAllCaps
              .copyWith(color: AppColors.neutral2),
        ),
      ],
    );
  }
}

class ItemMetadataTags extends StatelessWidget {
  const ItemMetadataTags({Key? key, required this.tags}) : super(key: key);
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 16,
      children: [
        for (final tag in tags)
          Chip(
            backgroundColor: tag.color().backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            label: Text(
              tag,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.normal, color: tag.color().color),
            ),
          ),
      ],
    );
  }
}
