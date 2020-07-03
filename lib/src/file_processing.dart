import 'dart:convert';
import 'dart:io';

class FileProcessing {
  String filePath;
  File file;

  FileProcessing({this.filePath}) {
    file = File(filePath);
  }

  dynamic getFileAsJSON() {
    final fileContents = file.readAsStringSync();
    return json.decode(fileContents);
  }
}
