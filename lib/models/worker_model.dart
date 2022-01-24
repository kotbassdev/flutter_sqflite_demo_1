import 'dart:core';

final String tableWorker = "worker";

class WorkerField {
  static final List<String> valus = [
    id,
    workerCode,
    workerName,
    workerStatus,
    createDate,
    createBy,
    updateDate,
    updateBy
  ];

  static final String id = '_id';
  static final String workerCode = 'workerCode';
  static final String workerName = 'workerName';
  static final String workerStatus = 'workerStatus';
  static final String createDate = 'createDate';
  static final String createBy = 'createBy';
  static final String updateDate = 'updateDate';
  static final String updateBy = 'updateBy';
}

class WorkerModel {
  final int? id;
  final String workerCode;
  final String workerName;
  final bool workerStatus;
  final DateTime createDate;
  final String createBy;
  final DateTime? updateDate;
  final String? updateBy;

  WorkerModel({
    this.id,
    required this.workerCode,
    required this.workerName,
    required this.workerStatus,
    required this.createDate,
    required this.createBy,
    this.updateDate,
    this.updateBy,
  });

  WorkerModel copy({
    int? id,
    String? workerCode,
    String? workerName,
    bool? workerStatus,
    DateTime? createDate,
    String? createBy,
    DateTime? updateDate,
    String? updateBy,
  }) =>
      WorkerModel(
        id: id ?? this.id,
        workerCode: workerCode ?? this.workerCode,
        workerName: workerName ?? this.workerName,
        workerStatus: workerStatus ?? this.workerStatus,
        createDate: createDate ?? this.createDate,
        createBy: createBy ?? this.createBy,
        updateDate: updateDate ?? this.updateDate,
        updateBy: updateBy ?? this.updateBy,
      );

  WorkerModel fromJson(Map<String, dynamic> json) => WorkerModel(
        id: json[WorkerField.id] as int?,
        workerCode: json[WorkerField.workerCode] as String,
        workerName: json[WorkerField.workerName] as String,
        workerStatus: json[WorkerField.workerStatus] as bool,
        createDate: DateTime.parse(json[WorkerField.createDate] as String),
        createBy: json[WorkerField.createBy] as String,
        updateDate: DateTime.parse(json[WorkerField.updateDate] as String),
        updateBy: json[WorkerField.updateBy] as String,
      );

  Map<String, dynamic> toJson() => {
        WorkerField.id: id,
        WorkerField.workerCode: workerCode,
        WorkerField.workerName: workerName,
        WorkerField.workerStatus: workerStatus,
        WorkerField.createDate: createDate.toIso8601String(),
        WorkerField.createBy: createBy,
        WorkerField.updateDate:
            updateDate != null ? updateDate!.toIso8601String() : null,
        WorkerField.updateBy: updateBy != null ? updateBy : null,
      };
}
