// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TasksResponse _$TasksResponseFromJson(Map<String, dynamic> json) =>
    TasksResponse()
      ..listOfTasks = (json['data'] as List<dynamic>?)
          ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList()
      ..error = json['error'] as String?;

Map<String, dynamic> _$TasksResponseToJson(TasksResponse instance) =>
    <String, dynamic>{
      'data': instance.listOfTasks,
      'error': instance.error,
    };
