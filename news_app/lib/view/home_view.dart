import 'package:flutter/material.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/model/fake_data.dart';
import 'package:news_app/widgets/new_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News Aggregator',
          style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.black),
        ),
        backgroundColor: AppColors.blueGrey,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: fakeData.articles.length,
        itemBuilder: (context, index) {
          return NewsCard(fakeData.articles[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.blueGrey,
        child: const Icon(Icons.search),
      ),
    );
  }
}
