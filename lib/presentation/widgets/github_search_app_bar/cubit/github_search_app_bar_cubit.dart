import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/use_case/locale/get_locale_use_case.dart';
import 'package:github_search_app/domain/use_case/locale/notify_locale_changed_stream_use_case.dart';
import 'package:github_search_app/domain/use_case/locale/save_locale_use_case.dart';
import 'package:github_search_app/domain/use_case/locale/subscribe_locale_changed_stream_use_case.dart';
import 'package:github_search_app/style/locales.dart';
import 'package:github_search_app/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

part 'github_search_app_bar_cubit.freezed.dart';
part 'github_search_app_bar_state.dart';

@injectable
class GithubSearchAppBarCubit extends AppCubit<GithubSearchAppBarState> {
  GithubSearchAppBarCubit(
    this._saveLocaleUseCase,
    this._getLocaleUseCase,
    this._notifyLocaleChangedStreamUseCase,
    this._subscribeLocaleChangedStreamUseCase,
  ) : super(const GithubSearchAppBarState.idle(locale: null));

  final SaveLocaleUseCase _saveLocaleUseCase;
  final GetLocaleUseCase _getLocaleUseCase;
  final NotifyLocaleChangedStreamUseCase _notifyLocaleChangedStreamUseCase;
  final SubscribeLocaleChangedStreamUseCase _subscribeLocaleChangedStreamUseCase;

  StreamSubscription? _localeChangedSubscription;

  late AppLocale _locale;

  Future<void> init() async {
    await _getLocale();
    await _listenToLocaleChanged();

    _emitListenerState(GithubSearchAppBarState.switchLocale(_locale));
    _emitLoaded();
  }

  Future<void> _listenToLocaleChanged() async {
    await _localeChangedSubscription?.cancel();
    _localeChangedSubscription = _subscribeLocaleChangedStreamUseCase().listen(
      (event) => _switchLocale(),
    );
  }

  Future<void> _getLocale() async {
    try {
      _locale = await _getLocaleUseCase();
    } catch (error, stacktrace) {
      Fimber.e(
        'Error while getting locale from db',
        ex: error,
        stacktrace: stacktrace,
      );

      _locale = AppLocale.pl;
      _emitListenerState(GithubSearchAppBarState.showErrorSnackBar(error));
    }
  }

  void switchLocaleAndNotify() => _notifyLocaleChangedStreamUseCase();

  Future<void> _switchLocale() async {
    final cachedLocale = _locale;

    try {
      _locale = _locale == AppLocale.pl ? AppLocale.en : AppLocale.pl;
      await _saveLocaleUseCase(_locale);
      _emitListenerState(GithubSearchAppBarState.switchLocale(_locale));
    } catch (error, stacktrace) {
      Fimber.e(
        'Error while saving locale in db',
        ex: error,
        stacktrace: stacktrace,
      );

      _locale = cachedLocale;
      _emitListenerState(GithubSearchAppBarState.showErrorSnackBar(error));
    }

    _emitLoaded();
  }

  void _emitLoaded() => emit(
        GithubSearchAppBarState.idle(
          locale: _locale,
        ),
      );

  void _emitListenerState(GithubSearchAppBarState stateToEmit) {
    final cachedState = state;
    emit(stateToEmit);
    emit(cachedState);
  }

  @override
  Future<void> close() {
    _localeChangedSubscription?.cancel();
    return super.close();
  }
}
