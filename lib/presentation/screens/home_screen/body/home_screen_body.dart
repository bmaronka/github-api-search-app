import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/presentation/screens/home_screen/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/screens/home_screen/widgets/repository_tile.dart';
import 'package:github_search_app/presentation/widgets/loader/loader.dart';
import 'package:github_search_app/presentation/widgets/scaffold/scaffold.dart';
import 'package:github_search_app/style/dimens.dart';

class HomeScreenBody extends HookWidget {
  const HomeScreenBody({
    required this.cubit,
    required this.repositories,
    required this.loading,
    required this.loadingMore,
    super.key,
  });

  final HomeCubit cubit;
  final List<Repository> repositories;
  final bool loading;
  final bool loadingMore;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return AppScaffold(
      title: Strings.of(context).appTitle,
      actions: [
        _buildThemeSwitch(),
      ],
      body: Padding(
        padding: EdgeInsets.all(Dimens.m),
        child: Column(
          children: [
            _buildSearchField(context, controller),
            _buildLoader(visible: loading),
            _buildRepositoriesList(),
            _buildLoader(visible: loadingMore),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeSwitch() => IconButton(
        onPressed: cubit.switchTheme,
        icon: const Icon(Icons.sunny),
      );

  Widget _buildSearchField(BuildContext context, TextEditingController controller) => TextField(
        controller: controller,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: Strings.of(context).hint,
          suffixIcon: IconButton(
            icon: Icon(
              Icons.close,
              size: Dimens.ms,
            ),
            onPressed: () => _clearSearch(controller),
          ),
        ),
        onChanged: cubit.searchRepositories,
      );

  void _clearSearch(TextEditingController controller) {
    controller.text = '';
    cubit.resetSearch();
  }

  Widget _buildRepositoriesList() => Expanded(
        child: ListView.builder(
          controller: cubit.scrollController,
          shrinkWrap: true,
          itemCount: repositories.length,
          itemBuilder: (context, index) => RepositoryTile(repository: repositories[index]),
        ),
      );

  Widget _buildLoader({bool visible = false}) => Visibility(
        visible: visible,
        child: Padding(
          padding: EdgeInsets.only(top: Dimens.m),
          child: const AppLoader(),
        ),
      );
}
