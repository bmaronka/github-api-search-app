import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/model/shared/owner_dto.dart';

part 'owner.freezed.dart';

@freezed
class Owner with _$Owner {
  factory Owner({
    required int id,
    required String name,
    required String avatarUrl,
  }) = _Owner;

  factory Owner.fromOwnerDto(OwnerDto ownerDto) => Owner(
        id: ownerDto.id,
        name: ownerDto.login,
        avatarUrl: ownerDto.avatarUrl,
      );
}
