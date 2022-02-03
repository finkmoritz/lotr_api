class Utils {
  static String? toNullString(dynamic value) {
    if (value == null) {
      return null;
    }
    return value;
  }

  static double toDouble(dynamic value) {
    if (value is int) {
      return value.toDouble();
    }
    return value;
  }

  static void printWarning(String message) {
    print('the_one_api WARNING: $message');
  }
}
