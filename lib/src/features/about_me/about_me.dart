import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:code_with_andrea_flutter/src/features/testimonials/avatar.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

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
                'ABOUT ME',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: AppColors.primary4,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                'Hello, I\'m Andrea',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 56),
              const AboutMeContent(),
              SizedBox(height: screenWidth > Breakpoints.tablet ? 64 : 40),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > Breakpoints.tablet) {
      return const AboutMeContentDesktop();
    } else {
      return const AboutMeContentMobile();
    }
  }
}

class AboutMeContentDesktop extends StatelessWidget {
  const AboutMeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth > Breakpoints.tablet
        ? 36.0
        : (screenWidth > 640 ? 27.0 : 24.0);
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Avatar(assetName: Constants.andreaAvatar, size: 96),
                  const SizedBox(width: 60),
                  Expanded(
                    child: Text(
                      'I\'m a Google Developer Expert for Dart & Flutter.',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        height: 1.22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'I created this website to help you become a Flutter Pro and make high-quality apps.',
                  style: DesktopTextTheme()
                      .paragraph18
                      .copyWith(color: AppColors.neutral2),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 96),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Flexible(
              flex: 1,
              child: AboutParagraph1(),
            ),
            SizedBox(width: 24),
            Flexible(
              flex: 1,
              child: AboutParagraph2(),
            ),
          ],
        )
      ],
    );
  }
}

class AboutMeContentMobile extends StatelessWidget {
  const AboutMeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth > Breakpoints.tablet
        ? 36.0
        : (screenWidth > 640 ? 27.0 : 24.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Avatar(assetName: Constants.andreaAvatar, size: 96),
        const SizedBox(height: 24),
        Text(
          'I\'m a Google Developer Expert for Dart & Flutter.',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            height: 1.22,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 72),
        const AboutParagraph1(),
        const SizedBox(height: 40),
        const AboutParagraph2(),
      ],
    );
  }
}

class AboutParagraph1 extends StatelessWidget {
  const AboutParagraph1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AboutParagraph(
      heading: 'Why Flutter?',
      content:
          'I think Flutter is the future of mobile app development. You can use it to build native apps in record time, and run your code on multiple platforms.',
    );
  }
}

class AboutParagraph2 extends StatelessWidget {
  const AboutParagraph2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AboutParagraph(
      heading: 'What\'s my teaching style?',
      content: """
My tutorials are clear, concise, and based on real-world examples. Just like my code. Watch my videos for a first-hand experience.

They include a lot of practical advice and tips that will make you more productive, and a better software developer.

Life is short. Your time matters. I want to help you make the most of it, and enjoy your journey.

Want to get in touch? See my Contact Page. For paid work enquiries, see my Services Page.

Happy coding!
                  """,
    );
  }
}

class AboutParagraph extends StatelessWidget {
  const AboutParagraph({Key? key, required this.heading, required this.content})
      : super(key: key);
  final String heading;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(height: 32),
        Text(
          content,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: AppColors.neutral2),
        ),
      ],
    );
  }
}
