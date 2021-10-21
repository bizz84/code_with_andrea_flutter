import 'package:code_with_andrea_flutter/src/app_header/app_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(child: AppHeader()),
      ],
    );
  }
}
