import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({Key? key, this.isOk = false}) : super(key: key);
final bool isOk;

  @override
  State<NavigateDetailLearnDart> createState() => _NavigateDetailLearnDartState();
}

class _NavigateDetailLearnDartState extends State<NavigateDetailLearnDart> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(onPressed: () {
          Navigator.of(context).pop(!widget.isOk);
        },
            icon: Icon(Icons.check, color: widget.isOk ? Colors.red : Colors.green),
            label:widget.isOk ? Text("Reddet") : Text("Onayla")),
      ),
    );
  }
}
