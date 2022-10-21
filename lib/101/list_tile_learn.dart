import 'package:flutter/material.dart';
import 'package:flutter_full_learning/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  //final imageUrl = "https://picsum.photos/200/300"; random_image.dart da verip burada kullandık
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
      Card( //daha güzel görünüm oldu, Listtile ı Card a wrap ettik.
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              print("basıldı");
            },
            title:RandomImage(), //Image.network(RandomImage().imageUrl,height: 100,fit: BoxFit.cover/*boxfit.cover harikaymış.*/,),
            /*shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(    burada Listtile ın kenarlarına border vs. verebiliyoruz.
              80.0, // Change your border radius here
              ),),*/
            contentPadding: EdgeInsets.zero, //kendiliğinden standart bir padding ile gelen nesnenin padding ini siliyoruz veya değiştiriyoruz.
            subtitle: Text("How do you use your card"),
            minVerticalPadding: 0,
            dense: true,
            leading: Container(height: 50,width:50,alignment: Alignment.bottomCenter,color:Colors.red,child: Icon(Icons.credit_card_rounded,size: 40,)),
            trailing: SizedBox(
              //width: 20,
              child: IconButton(onPressed: () {
                print("basıldı2");
              },icon: Icon(Icons.chevron_right),tooltip: "aa"),
            ),
          ),
        ),
      )
      ],
      ),
    );
  }
}
