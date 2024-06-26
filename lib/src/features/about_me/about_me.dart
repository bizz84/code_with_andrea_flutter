import 'package:code_with_andrea_flutter/gen/assets.gen.dart';
import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:code_with_andrea_flutter/src/constants/breakpoints.dart';
import 'package:code_with_andrea_flutter/src/features/testimonials/avatar.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
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
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: AppColors.primary4,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                'Hello, I\'m Andrea',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
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
  const AboutMeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return screenWidth > Breakpoints.tablet
        ? const AboutMeContentDesktop()
        : const AboutMeContentMobile();
  }
}

class AboutMeContentDesktop extends StatelessWidget {
  const AboutMeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
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
                  Avatar(assetName: Assets.andreaAvatar.path, size: 96),
                  const SizedBox(width: 60),
                  Expanded(
                    child: Text(
                      'I\'m a Google Developer Expert for Dart & Flutter.',
                      style: AppTextTheme.latoTextStyle.copyWith(
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
            ),
          ],
        ),
        const SizedBox(height: 96),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
        ),
      ],
    );
  }
}

class AboutMeContentMobile extends StatelessWidget {
  const AboutMeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final fontSize = screenWidth > Breakpoints.tablet
        ? 36.0
        : (screenWidth > 640 ? 27.0 : 24.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Avatar(assetName: Assets.andreaAvatar.path, size: 96),
        const SizedBox(height: 24),
        Text(
          'I\'m a Google Developer Expert for Dart & Flutter.',
          style: AppTextTheme.latoTextStyle.copyWith(
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
  const AboutParagraph1({super.key});

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
  const AboutParagraph2({super.key});

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
  const AboutParagraph({
    super.key,
    required this.heading,
    required this.content,
  });
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
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
        const SizedBox(height: 32),
        Text(
          content,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.neutral2),
        ),
      ],
    );
  }
}
