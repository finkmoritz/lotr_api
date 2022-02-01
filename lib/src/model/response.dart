class Response<T> {
  final List<T> docs;
  final int total;
  final int limit;
  final int offset;
  final int page;
  final int pages;

  Response({
    required this.docs,
    required this.total,
    required this.limit,
    required this.offset,
    required this.page,
    required this.pages,
  });

  factory Response.fromJson({
    required Map<String, dynamic> json,
    required T Function(dynamic) mapping,
  }) {
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
