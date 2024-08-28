
extension T on String {
  String get arabicNumberToEnglish {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    var input = this;
    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(arabic[i], english[i]);
    }
    return input;
  }
}
