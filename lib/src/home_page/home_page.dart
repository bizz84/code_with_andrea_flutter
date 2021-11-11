import 'package:code_with_andrea_flutter/src/app_header/app_header.dart';
import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:code_with_andrea_flutter/src/home_page/email_signup.dart';
import 'package:code_with_andrea_flutter/src/home_page/intro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: AppColors.neutral6,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AppHeader()),
          SliverToBoxAdapter(child: Intro()),
          SliverToBoxAdapter(child: EmailSignup()),
        ],
      ),
    );
  }
}
/*
- header 
- mobile menu (stack?)
*/
