import 'package:flutter/material.dart';

import '../models/item_model.dart';
import 'custom_grid_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.list,
  });
  final List list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 2.09,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (BuildContext context, int index) {
          ItemModel itemModel = ItemModel.fromJson(list[index]);
          return CustomGridViewItem(
            itemModel: itemModel,
          );
        },
      ),
    );
  }
}
