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
import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart'
    as _i4;
import 'package:github_search_app/data/repositories/service/repositories_service_impl.dart'
    as _i6;
import 'package:github_search_app/domain/repositories/service/repositories_service.dart'
    as _i5;
import 'package:github_search_app/domain/use_case/repositories/get_repo_issues_use_case.dart'
    as _i7;
import 'package:github_search_app/domain/use_case/repositories/get_repositories_use_case.dart'
    as _i8;
import 'package:github_search_app/injectable/dio_injectable/dio_configuration_module.dart'
    as _i11;
import 'package:github_search_app/injectable/dio_injectable/dio_injectable.dart'
    as _i12;
import 'package:github_search_app/presentation/screens/home_screen/cubit/home_cubit.dart'
    as _i9;
import 'package:github_search_app/presentation/screens/repository_details_screen/cubit/repository_details_cubit.dart'
    as _i10;
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
    gh.factory<_i4.RepositoriesDataSource>(
        () => _i4.RepositoriesDataSource(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.RepositoriesService>(
        () => _i6.RepositoriesServiceImpl(gh<_i4.RepositoriesDataSource>()));
    gh.factory<_i7.GetRepoIssuesUseCase>(
        () => _i7.GetRepoIssuesUseCase(gh<_i5.RepositoriesService>()));
    gh.factory<_i8.GetRepositoriesUseCase>(
        () => _i8.GetRepositoriesUseCase(gh<_i5.RepositoriesService>()));
    gh.factory<_i9.HomeCubit>(
        () => _i9.HomeCubit(gh<_i8.GetRepositoriesUseCase>()));
    gh.factory<_i10.RepositoryDetailsCubit>(
        () => _i10.RepositoryDetailsCubit(gh<_i7.GetRepoIssuesUseCase>()));
    return this;
  }
}

class _$DioConfigurationModule extends _i11.DioConfigurationModule {}

class _$DioModule extends _i12.DioModule {}
