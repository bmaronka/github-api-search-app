import 'package:github_search_app/data/locale/data_source/locale_db_data_source.dart';
import 'package:github_search_app/domain/locale/service/locale_service.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/style/locales.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocaleService)
class LocaleServiceImpl with StreamMixin<LocaleEvent> implements LocaleService {
  final LocaleDbDataSource _localeDbDataSource;

  LocaleServiceImpl(this._localeDbDataSource);

  @override
  Future<void> saveLocale(AppLocale locale) async => _localeDbDataSource.saveLocale(locale.languageCode);

  @override
  Future<AppLocale> getLocale() async {
    final locale = await _localeDbDataSource.getLocale();

    return AppLocale.fromString(locale);
  }

  @override
  void notifyLocaleChanged(LocaleEvent event) => notifyStream(event);

  @override
  Stream<LocaleEvent> getLocaleChangedStream() => getStream();
}
