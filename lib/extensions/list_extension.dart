const int _cutFactor = 30;

extension ListExtension<T> on List<T> {
  List<T> cutResponse(int page) => length >= _cutFactor
      ? sublist((page - 1) * _cutFactor, page * _cutFactor)
      : page == 1
          ? sublist(0, length)
          : [];
}
