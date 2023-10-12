import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/presentation/widgets/alert/snack_bar.dart';
import 'package:github_search_app/presentation/widgets/github_search_app_bar/cubit/github_search_app_bar_cubit.dart';
import 'package:github_search_app/style/dimens.dart';
import 'package:github_search_app/style/locales.dart';
import 'package:github_search_app/utils/or_else_handlers.dart';
import 'package:github_search_app/utils/use_once.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:provider/provider.dart';

class GithubSearchAppBar extends HookWidget implements PreferredSizeWidget {
  const GithubSearchAppBar({
    required this.title,
    this.actions,
    super.key,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<GithubSearchAppBarCubit>();
    final state = useBlocBuilder(
      cubit,
      buildWhen: _buildWhen,
    );
    useBlocListener(
      cubit,
      _listener,
      listenWhen: _listenWhen,
    );
    useOnce(cubit.init);

    return state.maybeWhen(
      idle: (locale) => AppBar(
        title: Text(title),
        backgroundColor: context.getColors().primary,
        actions: [
          ...?actions,
          if (locale != null)
            IconButton(
              onPressed: cubit.switchLocaleAndNotify,
              icon: SvgPicture.asset(
                locale.iconPath,
                height: Dimens.xm,
              ),
            ),
        ],
      ),
      orElse: buildNothing,
    );
  }

  bool _buildWhen(GithubSearchAppBarState state) => state is GithubSearchAppBarStateBuilder;

  bool _listenWhen(GithubSearchAppBarState state) => state is GithubSearchAppBarStateListener;

  void _listener(_, GithubSearchAppBarState state, BuildContext context) => state.maybeWhen(
        showErrorSnackBar: context.showErrorSnackBar,
        switchLocale: (locale) => Provider.of<LocaleModel>(context, listen: false).setLocale = locale,
        orElse: doNothing,
      );
}
