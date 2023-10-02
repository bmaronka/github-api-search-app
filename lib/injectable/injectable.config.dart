// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:github_search_app/data/issues/data_source/issues_data_source.dart'
    as _i4;
import 'package:github_search_app/data/issues/service/issues_service_impl.dart'
    as _i6;
import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart'
    as _i7;
import 'package:github_search_app/data/repositories/service/repositories_service_impl.dart'
    as _i9;
import 'package:github_search_app/domain/issues/service/issues_service.dart'
    as _i5;
import 'package:github_search_app/domain/repositories/service/repositories_service.dart'
    as _i8;
import 'package:github_search_app/domain/use_case/repositories/get_repo_issues_use_case.dart'
    as _i10;
import 'package:github_search_app/domain/use_case/repositories/get_repositories_use_case.dart'
    as _i11;
import 'package:github_search_app/injectable/dio_injectable/dio_configuration_module.dart'
    as _i14;
import 'package:github_search_app/injectable/dio_injectable/dio_injectable.dart'
    as _i15;
import 'package:github_search_app/presentation/screens/home_screen/cubit/home_cubit.dart'
    as _i12;
import 'package:github_search_app/presentation/screens/repository_details_screen/cubit/repository_details_cubit.dart'
    as _i13;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioConfigurationModule = _$DioConfigurationModule();
    final dioModule = _$DioModule();
    gh.singleton<_i3.BaseOptions>(dioConfigurationModule.createDioOptions());
    gh.singleton<_i3.Dio>(dioModule.dio(gh<_i3.BaseOptions>()));
    gh.factory<_i4.IssuesDataSource>(() => _i4.IssuesDataSource(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.IssuesService>(
        () => _i6.IssuesServiceImpl(gh<_i4.IssuesDataSource>()));
    gh.factory<_i7.RepositoriesDataSource>(
        () => _i7.RepositoriesDataSource(gh<_i3.Dio>()));
    gh.lazySingleton<_i8.RepositoriesService>(
        () => _i9.RepositoriesServiceImpl(gh<_i7.RepositoriesDataSource>()));
    gh.factory<_i10.GetRepoIssuesUseCase>(
        () => _i10.GetRepoIssuesUseCase(gh<_i5.IssuesService>()));
    gh.factory<_i11.GetRepositoriesUseCase>(
        () => _i11.GetRepositoriesUseCase(gh<_i8.RepositoriesService>()));
    gh.factory<_i12.HomeCubit>(
        () => _i12.HomeCubit(gh<_i11.GetRepositoriesUseCase>()));
    gh.factory<_i13.RepositoryDetailsCubit>(
        () => _i13.RepositoryDetailsCubit(gh<_i10.GetRepoIssuesUseCase>()));
    return this;
  }
}

class _$DioConfigurationModule extends _i14.DioConfigurationModule {}

class _$DioModule extends _i15.DioModule {}
