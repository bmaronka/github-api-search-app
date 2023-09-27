import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/repositories/model/owner_dto.dart';
import 'package:github_search_app/domain/repositories/model/owner.dart';

void main() {
  test(
    'test mapping OwnerDto to Owner',
    () {
      const ownerDto = OwnerDto(
        1,
        'Owner 1',
        'www.avatar1.com',
      );
      final owner = Owner(
        id: 1,
        name: 'Owner 1',
        avatarUrl: 'www.avatar1.com',
      );

      expect(Owner.fromOwnerDto(ownerDto), owner);
    },
  );
}
