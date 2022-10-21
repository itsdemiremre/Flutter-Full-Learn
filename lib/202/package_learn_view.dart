import 'package:flutter/material.dart';
import 'package:flutter_full_learning/202/package/launch_mixin.dart';
import 'package:flutter_full_learning/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        canLaunchUrlString("https://pub.dev/packages/url_launcher");
      },),
      body: const LoadingBar(),
    );
  }
  
  @override
  void name(params) {
  }
}
