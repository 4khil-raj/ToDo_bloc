import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  String? sId;
  String? title;
  String? description;
  bool? isCompleted;
  String? createdAt;
  String? updateAt;

  TodoEntity(
      {this.sId,
      this.title,
      this.description,
      this.isCompleted,
      this.createdAt,
      this.updateAt});

  @override
  List<Object?> get props => [
        this.sId,
        this.title,
        this.description,
        this.isCompleted,
        this.createdAt,
        this.updateAt
      ];
}
