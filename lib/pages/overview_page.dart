import 'package:flutter/material.dart';
import 'package:frettir_app/helper/localization.dart';

/// Overview / List view page of all stored feeds.
class OverviewPage extends StatelessWidget {
  // Handles floating action button tap.
  static void _onAddButtonTapped() {
    debugPrint('Tapped');
  }

  // Gets the page's body.
  static SafeArea _bodySafeArea = new SafeArea(
    child: _pageContainer,
    bottom: false,
  );

  // Gets the page's app bar.
  static AppBar _appBar(BuildContext context) {
    return new AppBar(
        title: Text(FrettirLocalizations.of(context).get('title')));
  }

  // Gets the fixed top column.
  static Column _topBackgroundColumn = new Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightBlueAccent, const Color(0xFAFAFAFF)],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Image(
                  image: AssetImage("assets/animation-bird-1.png"),
                  height: 30,
                  alignment: AlignmentDirectional.topStart,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: Image(
                  alignment: AlignmentDirectional.topEnd,
                  image: AssetImage("assets/overview_page_right_corner.png"),
                  height: 80,
                ),
              ))
            ],
          )),
    ],
  );

  // overview_page_right_corner.png

  static Container _contentContainer = new Container(
    alignment: Alignment.center,
    child: Center(child: Text("bla")),
  );

  // Gets the fixed, image-heavy bottom column.
  static Container _bottomBackgroundColumn = new Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/background-bottom.png"),
      repeat: ImageRepeat.repeatX,
      alignment: Alignment.bottomCenter
      )
    ),
      child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Image(
              image: AssetImage("assets/overview_page_left_bottom_corner.png"),
              height: 50,
              alignment: Alignment.bottomLeft
          )
      )
  );

  static Container _pageContainer = new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          _topBackgroundColumn, // Container with an image
          Expanded(child: _contentContainer), // Container with a label
          _bottomBackgroundColumn, // Container with an image
         ],
      )
  );

  // Gets the bottom-right floating action button.
  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton (
        onPressed: _onAddButtonTapped,
        tooltip:
            FrettirLocalizations.of(context).get('overview_page.fab.tooltip'),
        child: Icon(Icons.add));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: _appBar(context),
      body: _bodySafeArea,
      floatingActionButton: _floatingActionButton(context),
    );
  }
}
