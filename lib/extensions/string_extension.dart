import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalizeFirstLetter() => toBeginningOfSentenceCase(this, Intl.defaultLocale)!;
}
