/// Utility functions for the LOTR API package
class Utils {

  /// Converts a dynamic value to a string. If the value is null, it returns an empty string.
  static String? toNullString(dynamic value) {
    if (value == null) {
      return null;
    }
    return value;
  }

  /// Converts a dynamic value to a double. If the value is an integer, it converts it to double.
  static double toDouble(dynamic value) {
    if (value is int) {
      return value.toDouble();
    }
    return value;
  }

  /// Prints a package standard message to the console.
  static void printWarning(String message) {
    print('lotr_api WARNING: $message');
  }
}
