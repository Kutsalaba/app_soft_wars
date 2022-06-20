part 'task.g.dart';

class Task {

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  
  Task({
    required this.taskId,
    required this.status,
    required this.name,
    required this.type,
    this.description,
    required this.finishDate,
    required this.urgent,
    required this.syncTime,
    this.file,
  });

  String taskId;
  int status;
  String name;
  int type;
  String? description;
  DateTime finishDate;
  int urgent;
  DateTime syncTime;
  String? file;

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
