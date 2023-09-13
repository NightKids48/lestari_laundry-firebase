// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'transaction_special_notes.g.dart';

@JsonSerializable()
class TransactionSpecialNotes {
  String specialNotes;
  TransactionSpecialNotes(
    this.specialNotes,
  );

  factory TransactionSpecialNotes.fromJson(Map<String, dynamic> json) =>
      _$TransactionSpecialNotesFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionSpecialNotesToJson(this);
  }
}
