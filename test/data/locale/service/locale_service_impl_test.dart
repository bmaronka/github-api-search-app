import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/locale/data_source/locale_db_data_source.dart';
import 'package:github_search_app/data/locale/service/locale_service_impl.dart';
import 'package:github_search_app/style/locales.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'locale_service_impl_test.mocks.dart';

@GenerateMocks([
  LocaleDbDataSource,
])
void main() {
  late LocaleServiceImpl service;
  late LocaleDbDataSource dataSource;

  setUp(() {
    dataSource = MockLocaleDbDataSource();

    service = LocaleServiceImpl(dataSource);
  });

  test(
    'get locale',
    () async {
      when(dataSource.getLocale()).thenAnswer((_) => Future.value('pl'));

      final locale = await service.getLocale();

      expect(locale, AppLocale.pl);
    },
  );

  test(
    'save locale',
    () async {
      when(dataSource.saveLocale('pl')).thenAnswer((_) => Future.value());

      await service.saveLocale(AppLocale.pl);

      verify(dataSource.saveLocale('pl'));
    },
  );
}
