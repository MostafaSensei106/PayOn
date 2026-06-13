class GetRequiredFilesParams {
  const GetRequiredFilesParams({
    required this.accountTypeId,
    this.page = 1,
    this.size = 20,
  });

  final int accountTypeId;
  final int page;
  final int size;
}
