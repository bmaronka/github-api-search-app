import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/presentation/screens/error_page/error_page.dart';
import 'package:github_search_app/presentation/screens/loading_page/loading_page.dart';
import 'package:github_search_app/presentation/screens/repository_details_screen/body/repository_details_body.dart';
import 'package:github_search_app/presentation/screens/repository_details_screen/cubit/repository_details_cubit.dart';
import 'package:github_search_app/presentation/widgets/alert/snack_bar.dart';
import 'package:github_search_app/utils/or_else_handlers.dart';
import 'package:github_search_app/utils/use_once.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

@RoutePage()
class RepositoryDetailsScreen extends HookWidget {
  const RepositoryDetailsScreen({
    required this.repository,
    super.key,
  });

  final Repository repository;

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<RepositoryDetailsCubit>();
    final state = useBlocBuilder(
      cubit,
      buildWhen: _buildWhen,
    );
    useBlocListener(
      cubit,
      _listener,
      listenWhen: _listenWhen,
    );
    useOnce(() => cubit.init(repository));

    return state.maybeWhen(
      loading: LoadingPage.new,
      loaded: (issues, loadingMore) => RepositoryDetailsBody(
        cubit: cubit,
        repository: repository,
        issues: issues,
        loadingMore: loadingMore,
      ),
      error: (error) => ErrorPage(
        error,
        onConfirm: cubit.refresh,
      ),
      orElse: buildNothing,
    );
  }

  bool _buildWhen(RepositoryDetailsState state) => state is RepositoryDetailsStateBuilder;

  bool _listenWhen(RepositoryDetailsState state) => state is RepositoryDetailsStateListener;

  void _listener(_, RepositoryDetailsState state, BuildContext context) => state.maybeWhen(
        showErrorSnackBar: context.showErrorSnackBar,
        orElse: doNothing,
      );
}
