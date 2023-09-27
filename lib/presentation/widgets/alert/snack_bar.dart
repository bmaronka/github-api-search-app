import 'package:flutter/material.dart';
import 'package:github_search_app/data/model/offline_error.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/style/dimens.dart';

class AppSnackBar extends StatelessWidget with ExtensionMixin {
  final Color color;
  final String title;

  const AppSnackBar({
    required this.color,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Material(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(Dimens.s),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.m,
            vertical: Dimens.xm,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: context.getColors().white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

extension AppSnackBarDisplayer on BuildContext {
  void showErrorSnackBar(Object error) => _showSnackBar(
        AppSnackBar(
          title: error.isOfflineError ? Strings.of(this).offlineErrorTitle : Strings.of(this).unspecifiedErrorTitle,
          color: getColors().red,
        ),
      );

  void showBottomSnackBar({required String title, Color? color}) => _showSnackBar(
        AppSnackBar(
          title: title,
          color: color ?? getColors().green,
        ),
      );

  void _showSnackBar(AppSnackBar snackBar) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          backgroundColor: getColors().transparent,
          elevation: 0,
          content: snackBar,
        ),
      );
}
