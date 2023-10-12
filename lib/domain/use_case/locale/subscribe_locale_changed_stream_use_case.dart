import 'package:github_search_app/domain/locale/service/locale_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubscribeLocaleChangedStreamUseCase {
  final LocaleService _localeService;

  const SubscribeLocaleChangedStreamUseCase(this._localeService);

  Stream<LocaleEvent> call() => _localeService.getLocaleChangedStream();
}
