const int _cutFactor = 30;

extension ListExtension<T> on List<T> {
  List<T> cutResponse(int page) => sublist((page - 1) * _cutFactor, page * _cutFactor);
}
