import 'dart:io';
import 'custom_exception.dart';

class FileDownload {
bool? downloadItem(FileItem? fileItem) {
if (fileItem == null) throw FileDownloadException();
  print("object");
  return true;
  }
}

class FileItem{
  final String name;
  final File file;

  FileItem(this.name, this.file);
}