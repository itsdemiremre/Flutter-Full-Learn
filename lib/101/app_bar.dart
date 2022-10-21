import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "Welcome Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.arrow_back_ios),
       /* centerTitle: true,
        backgroundColor: Colors.transparent, //appbar a temayla bütünlük kazandırmak için transparent özelliği vermek.
        elevation: 0,//appbar ın transparent özelliğini tam verme.
        systemOverlayStyle: SystemUiOverlayStyle.light,//üstteki göstergelerin rengini kontrol etme.
        toolbarTextStyle: TextStyle(color: Colors.purple),
        automaticallyImplyLeading: false,
        leadingWidth: 20,//leading adı altındaki kısımda eklediğimiz nesnelerin konumunu ayarlama.
        actionsIconTheme: IconThemeData(color: Colors.red,size: 35),*/
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.menu)),
          //Center(child: CircularProgressIndicator()),
          Text("Purple")
        ],
      ),
    );
  }
}
