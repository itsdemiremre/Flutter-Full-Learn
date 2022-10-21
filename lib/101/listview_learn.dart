import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                FittedBox(
                  //Ekrana Fitted.
                  child: Text("Merhaba",
                      style: Theme.of(context).textTheme.headline1,
                      maxLines: 1 /*,textScaleFactor: 0.7,*/
                      ),
                ),
                Container(color: Colors.blue, height: 300),
                Divider(), //boşluk atmak için
                SizedBox(
                  height: 300,
                  child: ListView(
                      scrollDirection: Axis
                          .horizontal, //bu kısım bizim listview i yatayda da kullanabilmemizi sağlar.
                      children: [
                        Container(color: Colors.green, width: 200),
                        Container(color: Colors.white, width: 200),
                        Container(color: Colors.green, width: 200),
                        Container(color: Colors.white, width: 200)
                      ]),

                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                //xx
                FittedBox(
                  //Ekrana Fitted.
                  child: Text("Merhaba",
                      style: Theme.of(context).textTheme.headline1,
                      maxLines: 1 /*,textScaleFactor: 0.7,*/
                  ),
                ),
                Container(color: Colors.red, height: 300),
                Divider(), //boşluk atmak için
                SizedBox(
                  height: 300,
                  child: ListView(
                      scrollDirection: Axis
                          .horizontal, //bu kısım bizim listview i yatayda da kullanabilmemizi sağlar.
                      children: [
                        Container(color: Colors.green, width: 200),
                        Container(color: Colors.white, width: 200),
                        Container(color: Colors.green, width: 200),
                        Container(color: Colors.white, width: 200)
                      ]),

                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                _ListDemo()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<_ListDemo> {

  @override
  void initState() {
    super.initState();
    print("hey");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");

  }
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

