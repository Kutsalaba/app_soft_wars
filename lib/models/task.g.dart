// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      taskId: json['taskId'] as String,
      status: json['status'] as int,
      name: json['name'] as String,
      type: json['type'] as int,
      description: json['description'] as String?,
      finishDate: DateTime.parse(json['finishDate'] as String),
      urgent: json['urgent'] as int,
      syncTime: DateTime.parse(json['syncTime'] as String),
      file: json['file'] as String?,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'taskId': instance.taskId,
      'status': instance.status,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'finishDate': instance.finishDate.toIso8601String(),
      'urgent': instance.urgent,
      'syncTime': instance.syncTime.toIso8601String(),
      'file': instance.file,
    };
