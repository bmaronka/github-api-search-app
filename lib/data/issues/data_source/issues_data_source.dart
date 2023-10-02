import 'package:dio/dio.dart';
import 'package:github_search_app/data/issues/model/issue_dto.dart';
import 'package:github_search_app/networking_config/networking_endpoints.dart';
import 'package:github_search_app/networking_config/networking_params.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'issues_data_source.g.dart';

@injectable
@RestApi()
abstract class IssuesDataSource {
  @factoryMethod
  factory IssuesDataSource(Dio dio) = _IssuesDataSource;

  @GET(NetworkingEndpoints.issues)
  Future<List<IssueDto>> getIssues(
    @Path(NetworkingPath.owner) String owner,
    @Path(NetworkingPath.repo) String repo,
    @Query(NetworkingQuery.page) String page,
    @Query(NetworkingQuery.state) String state,
  );
}
