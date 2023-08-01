class TransactionDataAttributes {
  String createdAt;
  String updateAt;
  String transactionStatus;
  String publishedAt;
  String specialNotes;
  List orders;
  TransactionDataAttributes(
    this.createdAt,
    this.updateAt,
    this.transactionStatus,
    this.publishedAt,
    this.specialNotes,
    this.orders,
  );
}
