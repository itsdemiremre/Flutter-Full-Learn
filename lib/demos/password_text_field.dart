import 'package:flutter/material.dart';


class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, this.controller}) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  //final _obsecureText = "-";

  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      //obscuringCharacter: _obsecureText,
      decoration: InputDecoration(border: UnderlineInputBorder(),
        hintText: "Password",
        suffix: _onVisibilityIcon()
        ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
        //icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
          onPressed: _changeLoading,
  
      icon: AnimatedCrossFade(
        firstChild: Icon(Icons.visibility_outlined), 
      secondChild: Icon(Icons.visibility_off_outlined), 
      crossFadeState: _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond, duration: Duration(seconds: 2)),
      );
  }
}