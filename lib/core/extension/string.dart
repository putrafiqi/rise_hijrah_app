

extension StringExtension on String {
  String parseHtmlString() {
    return replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ');
  }
}