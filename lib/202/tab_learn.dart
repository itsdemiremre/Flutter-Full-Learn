import 'package:flutter/material.dart';
import 'package:flutter_full_learning/101/button_learn.dart';
import 'package:flutter_full_learning/101/card_learn.dart';
import 'package:flutter_full_learning/101/icon_learn.dart';
import 'package:flutter_full_learning/101/image_learn.dart';
import 'package:flutter_full_learning/101/list_tile_learn.dart';
import 'package:flutter_full_learning/101/listview_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin{
  late final TabController _tabController;
  final double _notchedValue = 15;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true, //notch U arka plana eşitleme.
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              onPressed: () {_tabController.animateTo(_MyTabViews.home.index);}),
          bottomNavigationBar: SizedBox(
            height: 30,
            child: BottomAppBar(
              notchMargin: _notchedValue,
              //shape: CircularNotchedRectangle(),
              child: TabBar(
                // indicatorColor: Colors.cyan,
                // labelColor: Colors.amber,
                // unselectedLabelColor: Colors.grey,
                padding: EdgeInsets.zero,
                onTap: (int index){},
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                controller: _tabController,
                  tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}",)).toList()),
            ),
          ),
          appBar: AppBar(),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [ImageLearn(), ListViewLearn(),ButtonLearn(),CardLearn()]),
        ));
  }
}

enum _MyTabViews { home,settings,favorites,profile }

extension _MyTabViewsExtension on _MyTabViews {
}