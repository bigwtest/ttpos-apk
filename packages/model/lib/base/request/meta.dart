class MetaRequest {
  final int pageNo;
  final int pageSize;
  MetaRequest({
    required this.pageNo,
    required this.pageSize,
  });

  Map<String, dynamic> toJson() {
    return {
      'page_no': pageNo,
      'page_size': pageSize,
    };
  }

  static MetaRequest fromJson(Map<String, dynamic> json) {
    return MetaRequest(
      pageNo: json['page_no'],
      pageSize: json['page_size'],
    );
  }
}
