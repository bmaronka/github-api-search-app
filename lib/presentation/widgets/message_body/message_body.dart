import 'package:flutter/material.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/style/dimens.dart';

class MessageBody extends StatelessWidget {
  final String title;
  final String? confirmButtonTitle;
  final VoidCallback? onConfirm;

  const MessageBody._({
    required this.title,
    this.confirmButtonTitle,
    this.onConfirm,
  });

  factory MessageBody.error({
    String? title,
    String? confirmButtonTitle,
    required Function() onConfirm,
  }) =>
      MessageBody._(
        title: title ?? Strings.current.unspecifiedErrorTitle,
        confirmButtonTitle: confirmButtonTitle ?? Strings.current.reload,
        onConfirm: onConfirm,
      );

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimens.m),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Dimens.m),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (confirmButtonTitle?.isNotEmpty ?? false)
                    ElevatedButton(
                      onPressed: onConfirm,
                      child: Text(confirmButtonTitle!),
                    ),
                ],
              ),
            ],
          ),
        ),
      );
}
