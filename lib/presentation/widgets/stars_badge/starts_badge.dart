import 'package:flutter/material.dart';
import 'package:github_search_app/style/colors.dart';
import 'package:github_search_app/style/dimens.dart';

class StarsBadge extends StatelessWidget {
  const StarsBadge({
    required this.starsCount,
    super.key,
  });

  final int starsCount;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: AppStandardColors.gold,
          ),
          SizedBox(width: Dimens.xs),
          Text(starsCount.toString()),
        ],
      );
}
