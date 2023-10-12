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
import 'package:github_search_app/data/db_client/database_client_impl.dart'
    as _i5;
import 'package:github_search_app/data/issues/data_source/issues_data_source.dart'
    as _i6;
import 'package:github_search_app/data/issues/service/issues_service_impl.dart'
    as _i8;
import 'package:github_search_app/data/locale/data_source/locale_db_data_source.dart'
    as _i9;
import 'package:github_search_app/data/locale/service/locale_service_impl.dart'
    as _i11;
import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart'
    as _i13;
import 'package:github_search_app/data/repositories/service/repositories_service_impl.dart'
    as _i15;
import 'package:github_search_app/domain/db_client/database_client.dart' as _i4;
import 'package:github_search_app/domain/issues/service/issues_service.dart'
    as _i7;
import 'package:github_search_app/domain/locale/service/locale_service.dart'
    as _i10;
import 'package:github_search_app/domain/repositories/service/repositories_service.dart'
    as _i14;
import 'package:github_search_app/domain/use_case/issues/get_repo_issues_use_case.dart'
    as _i19;
import 'package:github_search_app/domain/use_case/locale/get_locale_use_case.dart'
    as _i18;
import 'package:github_search_app/domain/use_case/locale/notify_locale_changed_stream_use_case.dart'
    as _i12;
import 'package:github_search_app/domain/use_case/locale/save_locale_use_case.dart'
    as _i16;
import 'package:github_search_app/domain/use_case/locale/subscribe_locale_changed_stream_use_case.dart'
    as _i17;
import 'package:github_search_app/domain/use_case/repositories/get_repositories_use_case.dart'
    as _i20;
import 'package:github_search_app/injectable/dio_injectable/dio_configuration_module.dart'
    as _i24;
import 'package:github_search_app/injectable/dio_injectable/dio_injectable.dart'
    as _i25;
import 'package:github_search_app/presentation/screens/home_screen/cubit/home_cubit.dart'
    as _i22;
import 'package:github_search_app/presentation/screens/repository_details_screen/cubit/repository_details_cubit.dart'
    as _i23;
import 'package:github_search_app/presentation/widgets/github_search_app_bar/cubit/github_search_app_bar_cubit.dart'
    as _i21;
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
    gh.factory<_i4.DatabaseClient>(() => const _i5.DatabaseClientImpl());
    gh.singleton<_i3.Dio>(dioModule.dio(gh<_i3.BaseOptions>()));
    gh.factory<_i6.IssuesDataSource>(() => _i6.IssuesDataSource(gh<_i3.Dio>()));
    gh.lazySingleton<_i7.IssuesService>(
        () => _i8.IssuesServiceImpl(gh<_i6.IssuesDataSource>()));
    gh.singleton<_i9.LocaleDbDataSource>(
        _i9.LocaleDbDataSource(gh<_i4.DatabaseClient>()));
    gh.lazySingleton<_i10.LocaleService>(
        () => _i11.LocaleServiceImpl(gh<_i9.LocaleDbDataSource>()));
    gh.factory<_i12.NotifyLocaleChangedStreamUseCase>(
        () => _i12.NotifyLocaleChangedStreamUseCase(gh<_i10.LocaleService>()));
    gh.factory<_i13.RepositoriesDataSource>(
        () => _i13.RepositoriesDataSource(gh<_i3.Dio>()));
    gh.lazySingleton<_i14.RepositoriesService>(
        () => _i15.RepositoriesServiceImpl(gh<_i13.RepositoriesDataSource>()));
    gh.factory<_i16.SaveLocaleUseCase>(
        () => _i16.SaveLocaleUseCase(gh<_i10.LocaleService>()));
    gh.factory<_i17.SubscribeLocaleChangedStreamUseCase>(() =>
        _i17.SubscribeLocaleChangedStreamUseCase(gh<_i10.LocaleService>()));
    gh.factory<_i18.GetLocaleUseCase>(
        () => _i18.GetLocaleUseCase(gh<_i10.LocaleService>()));
    gh.factory<_i19.GetRepoIssuesUseCase>(
        () => _i19.GetRepoIssuesUseCase(gh<_i7.IssuesService>()));
    gh.factory<_i20.GetRepositoriesUseCase>(
        () => _i20.GetRepositoriesUseCase(gh<_i14.RepositoriesService>()));
    gh.factory<_i21.GithubSearchAppBarCubit>(() => _i21.GithubSearchAppBarCubit(
          gh<_i16.SaveLocaleUseCase>(),
          gh<_i18.GetLocaleUseCase>(),
          gh<_i12.NotifyLocaleChangedStreamUseCase>(),
          gh<_i17.SubscribeLocaleChangedStreamUseCase>(),
        ));
    gh.factory<_i22.HomeCubit>(
        () => _i22.HomeCubit(gh<_i20.GetRepositoriesUseCase>()));
    gh.factory<_i23.RepositoryDetailsCubit>(
        () => _i23.RepositoryDetailsCubit(gh<_i19.GetRepoIssuesUseCase>()));
    return this;
  }
}

class _$DioConfigurationModule extends _i24.DioConfigurationModule {}

class _$DioModule extends _i25.DioModule {}
