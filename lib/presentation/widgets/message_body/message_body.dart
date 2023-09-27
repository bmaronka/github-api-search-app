import 'package:flutter/material.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/style/dimens.dart';

class MessageBody extends StatelessWidget {
  final String title;
  final String? confirmButtonTitle;
  final VoidCallback? onConfirm;
  final String? cancelButtonTitle;
  final VoidCallback? onCancel;

  const MessageBody._({
    required this.title,
    this.confirmButtonTitle,
    this.onConfirm,
    this.cancelButtonTitle,
    this.onCancel,
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

  factory MessageBody.errorNoAction({String? title}) => MessageBody._(
        title: title ?? Strings.current.unspecifiedErrorTitle,
      );

  factory MessageBody.oneAction({
    required String title,
    required String confirmButtonTitle,
    required Function() onConfirm,
  }) =>
      MessageBody._(
        title: title,
        confirmButtonTitle: confirmButtonTitle,
        onConfirm: onConfirm,
      );

  factory MessageBody.twoActions({
    required String title,
    required String confirmButtonTitle,
    required Function() onConfirm,
    required String cancelButtonTitle,
    required Function() onCancel,
  }) =>
      MessageBody._(
        title: title,
        confirmButtonTitle: confirmButtonTitle,
        onConfirm: onConfirm,
        cancelButtonTitle: cancelButtonTitle,
        onCancel: onCancel,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
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
                    if (cancelButtonTitle?.isNotEmpty ?? false) ...[
                      SizedBox(width: Dimens.m),
                      ElevatedButton(
                        onPressed: onCancel,
                        child: Text(cancelButtonTitle!),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
