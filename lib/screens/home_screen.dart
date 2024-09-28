import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:prectical_test_intelivita/providers/category_provider.dart';
import 'package:prectical_test_intelivita/screens/widget/options_overlay.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: const Text('Jewelry Store')),
          body: AlignedGridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: categoryProvider.items.length,
            itemBuilder: (context, index) {
              final category = categoryProvider.items[index];
              return LayoutBuilder(
                builder: (context, constraints) {
                  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
                  final containerHeight = isPortrait ? 150.0 : constraints.maxWidth * 0.75;
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            categoryProvider.selectItem(index);
                          },
                          child: Container(
                            height: containerHeight,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(category.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Expanded(child: Text(category.title, softWrap: true, maxLines: 2)),
                                Icon(categoryProvider.selectedIndex == index ? Icons.arrow_drop_up : Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          color: Colors.blueGrey.withOpacity(0.5),
                          height: index == categoryProvider.selectedIndex ? null : 0,
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: OptionsOverlay(item: category,),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              );
            },
          ),
        );
      },
    );
  }
}