extension StringExtension on String? {
  bool isNullOrEmpty()=>this!.isEmpty || this == null;
}
