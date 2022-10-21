import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({Key? key,required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {

  String _message = "";
  bool _isEven = false;

  @override
  void didChangeDependencies() { //initState gibi ama ondan sonra çalışır, Lifecycle property.
    super.didChangeDependencies();
    print("c");
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) { //
    super.didUpdateWidget(oldWidget);
   if(oldWidget.message!= widget.message){
     _message = widget.message;
     _computeName();
     setState(() {});
   }
  }
  @override
  void dispose() {
    super.dispose();//maindeki home a başka sayfayı çağırması için işlem yaptığımızda hotreload dan sonra Alo diye print verdi, yani sayfanın sonlandığı an dispose çalışır.
    //print("alo");
    _message =  "";
  }

  //mesaj tek ise yanına tek, değilse yanına çift yaz
  @override
  void initState() {  //en çok bilinen/kulanılan Lifecycle property. stateful widgetlar
    // çizilmeye başlamadan önce burası başlar, initstate methodundan sonra build başlıyor.
    super.initState();
    _message = widget.message;
    _isEven = widget.message.length.isEven;
    _computeName();
    print("a");
  }

  void _computeName() {
    if(_isEven){
    _message += " Çift";
    }else{
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(_message),
      ),
      body: _isEven ? TextButton(style: TextButton.styleFrom(backgroundColor:Colors.amber,primary: Colors.white,),onPressed: () {

      }, child: Text(_message)) : ElevatedButton(onPressed: () {
        setState(() {
          _message = "a";
        });
      }, child: Text(_message)),
    );
  }
}
