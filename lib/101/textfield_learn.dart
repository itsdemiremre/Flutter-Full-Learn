import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learning/product/languages/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 19,
            /*buildCounter: (BuildContext context, {int? currentLength,  bool? isFocused,  int? maxLength}) {
              return Container(height:10,width: 40,color: Colors.green[100 * ((currentLength ?? 0)~/2)],); */

            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            autofillHints: [AutofillHints.email],
            inputFormatters: [
              TextProjectInputFormatter()._formatter //keyword engelleyebiliyoruz.
            ],
            textInputAction: TextInputAction
                .next, //klavyeden next diye alta inebilmemize olanak sağlıyor, search gibi şeyleri de var.
            focusNode: focusNodeTextFieldOne,
            decoration: _InputDecorator().emailInput,
          ),
          TextField(focusNode: focusNodeTextFieldTwo, minLines: 2, maxLines: 4)
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
        key: key,
        duration: Duration(seconds: 1),
        height: 10,
        width: 10.0 * (currentLength ?? 0),
        color: Colors.green);
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "d") {
      return oldValue;
    }
    return oldValue;
  });
}

class _InputDecorator {
  final emailInput = InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    //hintText: "Mail",
    //label: Text("Mail"),//bu da label text ile aynı ama label text widget yerine direkt String alır.
    labelText: LanguageItems.mailTitle, //en kolay yolu,
    fillColor: Colors.black26, filled: true,
  );
}
