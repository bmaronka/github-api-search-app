import 'package:dio/dio.dart';
import 'package:github_search_app/data/repositories/model/repositories_list_dto.dart';
import 'package:github_search_app/networking_config/networking_endpoints.dart';
import 'package:github_search_app/networking_config/networking_params.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'repositories_data_source.g.dart';

@injectable
@RestApi()
abstract class RepositoriesDataSource {
  @factoryMethod
  factory RepositoriesDataSource(Dio dio) = _RepositoriesDataSource;

  @GET(NetworkingEndpoints.searchRepositories)
  Future<RepositoriesListDto> getRepositories(
    @Query(NetworkingQuery.query) String query,
    @Query(NetworkingQuery.page) String page,
    @Query(NetworkingQuery.sort) String sort,
    @Query(NetworkingQuery.order) String order,
  );
}
