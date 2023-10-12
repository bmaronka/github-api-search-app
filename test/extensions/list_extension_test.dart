import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';

void main() {
  group(
    'length bigger than 30',
    () {
      final list = List.generate(125, (index) => index);

      test(
        'test when page is 1',
        () {
          final cutList = list.cutResponse(1);

          expect(cutList, List.generate(30, (index) => index));
        },
      );

      test(
        'test when page is 3',
        () {
          final cutList = list.cutResponse(3);

          expect(cutList, [
            60,
            61,
            62,
            63,
            64,
            65,
            66,
            67,
            68,
            69,
            70,
            71,
            72,
            73,
            74,
            75,
            76,
            77,
            78,
            79,
            80,
            81,
            82,
            83,
            84,
            85,
            86,
            87,
            88,
            89,
          ]);
        },
      );
    },
  );

  group(
    'length smaller than 30',
    () {
      final list = List.generate(25, (index) => index);

      test(
        'test when page is 1',
        () {
          final cutList = list.cutResponse(1);

          expect(cutList, List.generate(25, (index) => index));
        },
      );
    },
  );
}
