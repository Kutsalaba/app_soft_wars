class TaskResponse {

  factory TaskResponse.fromJson(Map<String, dynamic> json) => TaskResponse(
        error: json['error'],
        data: List<Task>.from(json['data'].map((x) => Task.fromJson(x))),
      );
  TaskResponse({
    this.error,
    this.data,
  });

  String? error;
  List<Task>? data;
}

class Task {

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json['id'],
        taskId: json['taskId'],
        status: json['status'],
        name: json['name'],
        type: json['type'],
        description: json['description'],
        file: json['file'],
        finishDate: DateTime.parse(json['finishDate']),
        urgent: json['urgent'],
        syncTime: DateTime.parse(json['syncTime']),
      );
  Task({
    required this.id,
    required this.taskId,
    required this.status,
    required this.name,
    required this.type,
    this.description,
    this.file,
    required this.finishDate,
    required this.urgent,
    required this.syncTime,
  });

  String id;
  String taskId;
  String status;
  String name;
  String type;
  String? description;
  String? file;
  DateTime finishDate;
  String urgent;
  DateTime syncTime;
}
