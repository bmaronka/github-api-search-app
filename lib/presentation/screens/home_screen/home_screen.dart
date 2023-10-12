import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/presentation/screens/error_page/error_page.dart';
import 'package:github_search_app/presentation/screens/home_screen/body/home_screen_body.dart';
import 'package:github_search_app/presentation/screens/home_screen/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/widgets/alert/snack_bar.dart';
import 'package:github_search_app/style/themes.dart';
import 'package:github_search_app/utils/or_else_handlers.dart';
import 'package:github_search_app/utils/use_once.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<HomeCubit>();
    final state = useBlocBuilder(
      cubit,
      buildWhen: _buildWhen,
    );
    useBlocListener(
      cubit,
      _listener,
      listenWhen: _listenWhen,
    );
    useOnce(() => cubit.init(Provider.of<AppThemeModel>(context, listen: false).currentTheme));

    return state.maybeWhen(
      loaded: (repositories, loading, loadingMore, wasSearched) => HomeScreenBody(
        cubit: cubit,
        repositories: repositories,
        loading: loading,
        loadingMore: loadingMore,
        wasSearched: wasSearched,
      ),
      error: (error) => ErrorPage(
        error,
        onConfirm: cubit.resetSearch,
      ),
      orElse: buildNothing,
    );
  }

  bool _buildWhen(HomeState state) => state is HomeStateBuilder;

  bool _listenWhen(HomeState state) => state is HomeStateListener;

  void _listener(_, HomeState state, BuildContext context) => state.maybeWhen(
        showErrorSnackBar: context.showErrorSnackBar,
        changeThemeMode: (theme) => Provider.of<AppThemeModel>(context, listen: false).setTheme = theme,
        showNoMoreRepositoriesSnackBar: () => context.showBottomSnackBar(title: Strings.of(context).noMoreRepositories),
        orElse: doNothing,
      );
}
