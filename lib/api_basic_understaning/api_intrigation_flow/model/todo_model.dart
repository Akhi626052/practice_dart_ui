class TodoModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });
// Map ko TodoModel object me convert karna

  // fromJson() kya karta hai?: Ye Map ke data ko class ke variables me bhar deta hai.
  TodoModel.fromJson(Map<String, dynamic> json) {// json ak parameter variable hai, json: 👉 Variable (Parameter) Name hai
    userId = json["userId"]; // json["userId"] → Map me "userId" key ki value nikalo.
    id = json["id"]; // Us value ko userId variable me store kar do.
    title = json["title"];
    completed = json["completed"];
  }
}