import 'dart:html';

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
  final bool? workerStatus;
  final DateTime? createDate;
  final String? createBy;
  final DateTime? updateDate;
  final String? updateBy;

  WorkerModel({
    this.id,
    required this.workerCode,
    required this.workerName,
    this.workerStatus,
    this.createDate,
    this.createBy,
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

  factory WorkerModel.fromJson(Map<String, dynamic> json) => WorkerModel(
        id: json[WorkerField.id] != null ? json[WorkerField.id] : null,
        workerCode: json[WorkerField.workerCode],
        workerName: json[WorkerField.workerName],
        workerStatus: json[WorkerField.workerStatus] != null
            ? json[WorkerField.workerStatus]
            : false,
        createDate: json[WorkerField.createDate] != null
            ? json[WorkerField.createDate]
            : DateTime.now(),
        createBy: json[WorkerField.createBy] != null
            ? json[WorkerField.createBy]
            : 'admin',
        updateDate: json[WorkerField.updateDate] != null
            ? json[WorkerField.updateDate]
            : DateTime.now(),
        updateBy: json[WorkerField.updateBy] != null
            ? json[WorkerField.updateBy]
            : 'admin',
      );

  Map<String, dynamic> toJson() => {
        WorkerField.id: id,
        WorkerField.workerCode: workerCode,
        WorkerField.workerName: workerName,
        WorkerField.workerStatus: workerStatus,
        WorkerField.createDate: createDate,
        WorkerField.createBy: createBy,
        WorkerField.updateDate: updateDate,
        WorkerField.updateBy: updateBy,
      };
}
