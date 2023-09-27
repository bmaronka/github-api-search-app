import 'package:flutter/cupertino.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';

const _defaultLoaderRadius = 10.0;

class AppLoader extends StatelessWidget with ExtensionMixin {
  final Color? color;
  final double? radius;

  const AppLoader({
    this.color,
    this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: CupertinoActivityIndicator(
          color: color ?? context.getColors().black,
          radius: radius ?? _defaultLoaderRadius,
        ),
      );
}
