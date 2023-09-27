import 'package:flutter/material.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/style/dimens.dart';

class StarsBadge extends StatelessWidget with ExtensionMixin {
  const StarsBadge({
    required this.starsCount,
    super.key,
  });

  final int starsCount;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: context.getColors().gold,
          ),
          SizedBox(width: Dimens.xs),
          Text(starsCount.toString()),
        ],
      );
}
