import 'package:flutter/material.dart';

const double kZero=0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin{
  
  @override
  void initState() {
    controller = AnimationController(vsync: this,duration: _DurationSelections.durationLess);
  }

  bool _isVisible = false;
  bool _isThereOpacity = false;

   //Text("Data",style: context.textTheme().headline1)

  late AnimationController controller;
  
  void _changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isThereOpacity = !_isThereOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _changeVisibility();
          controller.animateTo(_isVisible ? 1 : 0);
      },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              duration: _DurationSelections.durationLess,
              opacity: _isThereOpacity ? 1 : 0,
              child: Text("data")
              ),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
            icon: Icon(Icons.precision_manufacturing_sharp),
           ),
          ),
          AnimatedDefaultTextStyle(
          child: const Text("Hmmm"),
          style: (_isVisible ? context.textTheme().headline1 : context.textTheme().subtitle1) ?? TextStyle(),
          duration: _DurationSelections.durationLess),

          AnimatedIcon(
            icon: AnimatedIcons.view_list, 
            progress: controller,
          ),

          AnimatedContainer(duration: _DurationSelections.durationLess,
          height: _isVisible ? kZero : MediaQuery.of(context).size.width * 0.2,
          width: MediaQuery.of(context).size.height * 0.2,
          color: Colors.blue,
          margin: EdgeInsets.all(5),
          //child: ,
          ),
          Expanded(
            child: Stack(
              children: [
            AnimatedPositioned(
              top: 30,
              curve: Curves.easeInOutCirc,
            child: Text("aaaa"), duration: _DurationSelections.durationLess)],
          )),
          Expanded(
            child: AnimatedList(itemBuilder: (context, index, animation) { 
              return Text("data");
             },),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: Placeholder(),
       secondChild: SizedBox.shrink(),
      duration: _DurationSelections.durationLess,
    crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    //have more details to play with.
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationSelections {
  static const durationLess = Duration(seconds: 1);
}

// class _OpacitySelections {
//   static final haveNoOpacity = Opacity(opacity: 0);
//   static final haveOpacity = Opacity(opacity: 1);
// }