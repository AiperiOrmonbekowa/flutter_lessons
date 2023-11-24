import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/constants/app_colors.dart';
import 'package:news_app/model/article.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
    this.article, {
    super.key,
  });
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.network(
                  article.urlToImage ??
                      'https://2348.cupe.ca/files/2012/01/News.gif',
                  errorBuilder: (context, object, stract) {
                    return const SizedBox.shrink();
                  },
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                width: 19,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      DateFormat('y MMM d').format(article.publishedAt),
                      // article.publishedAt.toString(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    // Text(article.description),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: AppColors.blueGrey,
          )
        ],
      ),
    );
  }
}
