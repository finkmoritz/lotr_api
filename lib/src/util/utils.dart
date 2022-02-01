class Utils {
  static double toDouble(dynamic value) {
    if (value is int) {
      return value.toDouble();
    }
    return value;
  }
}
