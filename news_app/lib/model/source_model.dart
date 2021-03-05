class SourceApp {
  String id;
  String name;
  SourceApp({this.id, this.name});
  factory SourceApp.fromJson(Map<String, dynamic> json) {
    return SourceApp(
      id: json['id'],
      name: json['name'],
    );
  }
}
