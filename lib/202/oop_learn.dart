import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

import 'custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) async{
    await launchUrl(path as Uri);
  }
}

class FileDownload extends IFileDownload with ShareMixin{
@override
  bool? downloadItem(FileItem? fileItem) {
if (fileItem == null) throw FileDownloadException();
  return true;
  }

  void smsShare() {
  }  
}

class SmsDownload implements IFileDownload{
@override
  bool? downloadItem(FileItem? fileItem) {
if (fileItem == null) throw FileDownloadException();
  //print("object");
  return true;
  }
  
  @override
  Future<void> toShare(String path) async {
      await launchUrl("sms:$path" as Uri);

  }
}

class FileItem{
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {   
  }
}