/// Response class to handle API responses
class Response<T> {

  /// The list of documents returned by the API
  final List<T> docs;

  /// The total number of documents available
  final int total;

  /// The limit of documents per page
  final int limit;

  /// The offset for pagination
  final int offset;

  /// The current page number
  final int? page;

  /// The total number of pages available
  final int? pages;

  /// Default constructor for the Response class
  Response({
    required this.docs,
    required this.total,
    required this.limit,
    required this.offset,
    this.page,
    this.pages,
  });

  /// Factory constructor to create a Response instance from JSON
  factory Response.fromJson({
    required Map<String, dynamic> json,
    required T Function(dynamic) mapping,
  }) {
    if (json['success'] != null && !json['success']) {
      throw Exception('API returned error: ${json['message']}');
    }
    Iterable docsIt = json['docs'];
    return Response(
      docs: docsIt.map((d) => mapping(d)).toList(),
      total: json['total'],
      limit: json['limit'],
      offset: json['offset'],
      page: json['page'],
      pages: json['pages'],
    );
  }

  @override
  String toString() {
    return '''Response(
    docs: $docs,
    total: $total,
    limit: $limit,
    offset: $offset,
    page: $page,
    pages: $pages,
)''';
  }
}
