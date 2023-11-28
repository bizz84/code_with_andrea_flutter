import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/constants/constants.dart';
import 'package:code_with_andrea_flutter/src/features/testimonials/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestimonialCardData {
  TestimonialCardData(
      this.content, this.author, this.courseName, this.avatarAssetName);
  final String content;
  final String author;
  final String courseName;
  final String? avatarAssetName;

  static final List<TestimonialCardData> allTestimonials = [
    TestimonialCardData(
      """
I can honestly say that Andrea's knowledge and guidance is top notch! He explains the principles well which helps you understand the concepts and structures within the Dart language.

This course is a great asset to anyone looking to improve their coding skills. Having Andrea by your side, you should feel privileged to have a mentor / coach of his caliber, who shares his knowledge in such an 'easy to understand' manner. Thanks!
    """,
      "Andri De Jager",
      "The Complete Dart Developer Guide",
      null,
    ),
    TestimonialCardData(
      """
Clear explanations, a useful practical application that demonstrates all the core things essential to building an app ready for release into the wild.

Every step taken is clearly and thoroughly explained, plus downloadable code for every section of this course. A fantastic current course and is proving invaluable for strategies for building ideas for my own app.

Cannot praise this course and Andrea’s presentation highly enough.
      """,
      "Cheryl Kirsten",
      "Flutter & Firebase Course: Build a Complete App for iOS & Android",
      null,
    ),
//     TestimonialCardData(
//       """
// Andrea is a great instructor! He packs a ton of great information into each lesson in a concise way.
//       """,
//       "Parker Stevens",
//       "The Complete Dart Developer Guide",
//       "assets/parker-stevens.jpg",
//     ),
    TestimonialCardData(
      """
Andrea is an excellent instructor and developer. Very thankful he takes the time to create these courses and maintain his YouTube tutorials.

The way Andrea codes reveals a lot of best practices, good app architecture, and interesting techniques; his source code is very clean and logical.

In my opinion, this gives him a unique advantage versus other online instructors who write code to illustrate a point but often shortcuts are taken or it is not production quality.

There are more intermediate level tips I don't see other devs covering. Thanks so much Andrea!!
      """,
      "Niven Shah",
      "Flutter & Firebase Course: Build a Complete App for iOS & Android",
      "assets/niven-shah.jpg",
    ),
    TestimonialCardData(
      """
Up-to-date content, didactic instructor, good support community on Slack, additional resources, tutorials and optional videos with the latest advances in Flutter.

Concise and direct to the point, with a huge number of diagrams. A colossal amount of work to simplify our learning.
      """,
      "Fabian Sosa Escalada",
      "Flutter & Firebase Course: Build a Complete App for iOS & Android",
      null,
    ),
    TestimonialCardData(
      """
This is by far the best flutter course if you want to learn coding best practises while learning flutter, which I think everyone should.

I've taken two other top rated flutter courses in Udemy and speaking by experience.

Another impressive thing about this course is that most of the videos are around 5 minutes even to cover complex topics. I am pretty sure Andrea has put lot of work to make them as such.
      """,
      "Nipuna Cooray",
      "Flutter & Firebase Course: Build a Complete App for iOS & Android",
      "assets/nipuna-cooray.jpg",
    ),
    TestimonialCardData(
      """
Animations have always been my weak point, but Andrea's course covers most if not all the biggest Animation topics, and does so with lots of examples.
      """, // Another fantastic course from a great teacher.
      "Tadas Petra",
      "Flutter Animations Masterclass - Full Course",
      "assets/tadas-petra.jpg",
    ),
  ];
}

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key, required this.data});
  final TestimonialCardData data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.neutral6,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.content,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (data.avatarAssetName != null) ...[
                  Avatar(assetName: data.avatarAssetName!, size: 44),
                  const SizedBox(width: 8),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.author,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        data.courseName,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontStyle: FontStyle.italic,
                              color: AppColors.neutral3,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++) ...[
                            SvgPicture.asset(
                              Constants.iconStar,
                              semanticsLabel: 'Star',
                            ),
                            const SizedBox(width: 4),
                          ]
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
