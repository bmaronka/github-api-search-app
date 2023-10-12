import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/domain/locale/service/locale_service.dart';
import 'package:github_search_app/domain/use_case/locale/get_locale_use_case.dart';
import 'package:github_search_app/domain/use_case/locale/notify_locale_changed_stream_use_case.dart';
import 'package:github_search_app/domain/use_case/locale/save_locale_use_case.dart';
import 'package:github_search_app/domain/use_case/locale/subscribe_locale_changed_stream_use_case.dart';
import 'package:github_search_app/presentation/widgets/github_search_app_bar/cubit/github_search_app_bar_cubit.dart';
import 'package:github_search_app/style/locales.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'github_search_app_bar_cubit_test.mocks.dart';

@GenerateMocks([
  GetLocaleUseCase,
  SaveLocaleUseCase,
  SubscribeLocaleChangedStreamUseCase,
  NotifyLocaleChangedStreamUseCase,
])
void main() {
  late GetLocaleUseCase getLocaleUseCase;
  late SaveLocaleUseCase saveLocaleUseCase;
  late SubscribeLocaleChangedStreamUseCase subscribeLocaleChangedStreamUseCase;
  late NotifyLocaleChangedStreamUseCase notifyLocaleChangedStreamUseCase;

  late GithubSearchAppBarCubit cubit;

  final error = Exception();

  setUp(() {
    getLocaleUseCase = MockGetLocaleUseCase();
    saveLocaleUseCase = MockSaveLocaleUseCase();
    subscribeLocaleChangedStreamUseCase = MockSubscribeLocaleChangedStreamUseCase();
    notifyLocaleChangedStreamUseCase = MockNotifyLocaleChangedStreamUseCase();

    cubit = GithubSearchAppBarCubit(
      saveLocaleUseCase,
      getLocaleUseCase,
      notifyLocaleChangedStreamUseCase,
      subscribeLocaleChangedStreamUseCase,
    );
  });

  test(
    'has initial empty idle state',
    () {
      expect(
        cubit.state,
        const GithubSearchAppBarState.idle(locale: null),
      );
    },
  );

  group(
    'test init',
    () {
      const locale = AppLocale.pl;

      blocTest(
        'getting locale succesfully',
        act: (_) async {
          when(getLocaleUseCase()).thenAnswer((_) => Future.value(locale));
          when(subscribeLocaleChangedStreamUseCase()).thenAnswer((_) => const Stream.empty());

          await cubit.init();
        },
        build: () => cubit,
        expect: () => [
          const GithubSearchAppBarState.switchLocale(locale),
          const GithubSearchAppBarState.idle(locale: null),
          const GithubSearchAppBarState.idle(locale: locale),
        ],
      );

      blocTest(
        'getting locale with error',
        act: (_) async {
          when(getLocaleUseCase()).thenThrow(error);
          when(subscribeLocaleChangedStreamUseCase()).thenAnswer((_) => const Stream.empty());

          await cubit.init();
        },
        build: () => cubit,
        expect: () => [
          GithubSearchAppBarState.showErrorSnackBar(error),
          const GithubSearchAppBarState.idle(locale: null),
          const GithubSearchAppBarState.switchLocale(locale),
          const GithubSearchAppBarState.idle(locale: null),
          const GithubSearchAppBarState.idle(locale: locale),
        ],
      );
    },
  );

  group(
    'test _listenToLocaleChanged',
    () {
      const oldLocale = AppLocale.pl;
      const newLocale = AppLocale.en;

      blocTest(
        'switching locale succesfully',
        act: (_) async {
          when(getLocaleUseCase()).thenAnswer((_) => Future.value(oldLocale));
          when(saveLocaleUseCase(newLocale)).thenAnswer((_) => Future.value());
          when(subscribeLocaleChangedStreamUseCase()).thenAnswer((_) => Stream.value(LocaleEvent.localeChanged));

          await cubit.init();
        },
        build: () => cubit,
        expect: () => [
          const GithubSearchAppBarState.switchLocale(oldLocale),
          const GithubSearchAppBarState.idle(locale: null),
          const GithubSearchAppBarState.idle(locale: oldLocale),
          const GithubSearchAppBarState.switchLocale(newLocale),
          const GithubSearchAppBarState.idle(locale: oldLocale),
          const GithubSearchAppBarState.idle(locale: newLocale),
        ],
      );

      blocTest(
        'switching locale with error',
        act: (_) async {
          when(getLocaleUseCase()).thenAnswer((_) => Future.value(oldLocale));
          when(saveLocaleUseCase(newLocale)).thenThrow(error);
          when(subscribeLocaleChangedStreamUseCase()).thenAnswer((_) => Stream.value(LocaleEvent.localeChanged));

          await cubit.init();
        },
        build: () => cubit,
        expect: () => [
          const GithubSearchAppBarState.switchLocale(oldLocale),
          const GithubSearchAppBarState.idle(locale: null),
          const GithubSearchAppBarState.idle(locale: oldLocale),
          GithubSearchAppBarState.showErrorSnackBar(error),
          const GithubSearchAppBarState.idle(locale: oldLocale),
        ],
      );
    },
  );
}
