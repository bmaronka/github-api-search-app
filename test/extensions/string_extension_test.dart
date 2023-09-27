import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/extensions/string_extension.dart';

void main() {
  group(
    'capitalize frist letter tests',
    () {
      test(
        'capitalized',
        () {
          const test = 'test';
          const result = 'Test';

          expect(test.capitalizeFirstLetter(), result);
        },
      );

      test(
        'not capitalized',
        () {
          const test = 'Test';
          const result = 'Test';

          expect(test.capitalizeFirstLetter(), result);
        },
      );
    },
  );
}
