import 'package:code_with_andrea_flutter/src/features/cards/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

// Grid layout with content-sized items
// See: https://codewithandrea.com/articles/flutter-layout-grid-content-sized-items/
class ItemCardLayoutGrid extends StatelessWidget {
  const ItemCardLayoutGrid({
    super.key,
    required this.crossAxisCount,
    required this.items,
  })  
  // we only plan to use this with 1 or 2 columns
  : assert(crossAxisCount == 1 || crossAxisCount == 2);
  final int crossAxisCount;
  final List<ItemCardData> items;

  @override
  Widget build(BuildContext context) {
    final rowSizes = List.generate(items.length ~/ crossAxisCount, (_) => auto);
    return LayoutGrid(
      // set some flexible track sizes based on the crossAxisCount
      columnSizes: crossAxisCount == 2 ? [1.fr, 1.fr] : [1.fr],
      // set all the row sizes to auto (self-sizing height)
      rowSizes: rowSizes,
      rowGap: 40, // equivalent to mainAxisSpacing
      columnGap: 24, // equivalent to crossAxisSpacing
      // note: there's no childAspectRatio
      children: [
        // render all the cards with *automatic child placement*
        for (var i = 0; i < items.length; i++) ItemCard(data: items[i]),
      ],
    );
  }
}

// Alternative implementation using GridView
//
// Tentative implementation based on GridView
class ItemCardGridView extends StatelessWidget {
  const ItemCardGridView(
      {super.key,
      required this.crossAxisCount,
      required this.padding,
      required this.items})
      // we plan to use this with 1 or 2 columns only
      : assert(crossAxisCount == 1 || crossAxisCount == 2);
  final int crossAxisCount;
  final EdgeInsets padding;
  // list representing the data for all items
  final List<ItemCardData> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 40,
        crossAxisSpacing: 24,
        // width / height: fixed for *all* items
        childAspectRatio: 0.75,
      ),
      // return a custom ItemCard
      itemBuilder: (context, i) => ItemCard(data: items[i]),
      itemCount: items.length,
    );
  }
}
