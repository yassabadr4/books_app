import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Search Result',
                  style: BooklyStyles.textStyle18,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Expanded(child: SearchResultListView()),
          ),
        ),
      ],
    );
  }
}
