import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/style/dimens.dart';
import 'package:octo_image/octo_image.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    required this.url,
    required this.placeholder,
    this.size,
    super.key,
  });

  final String url;
  final String placeholder;
  final double? size;

  @override
  Widget build(BuildContext context) => OctoImage.fromSet(
        image: CachedNetworkImageProvider(url),
        fit: BoxFit.cover,
        octoSet: OctoSet.circleAvatar(
          backgroundColor: context.getColors().gold,
          text: Text(
            placeholder,
            style: TextStyle(color: context.getColors().white),
          ),
        ),
        height: size ?? Dimens.xxl,
        width: size ?? Dimens.xxl,
      );
}
