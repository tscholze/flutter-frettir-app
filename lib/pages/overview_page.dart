import 'package:flutter/material.dart';
import 'package:frettir_app/helper/localization.dart';

/// Overview / List view page of all stored feeds.
class OverviewPage extends StatelessWidget {

  // Handles floating action button tap.
  static void _onAddButtonTapped() {
    debugPrint('Tapped');
  }

  // Gets the app bar
  Widget _buildAppBar(BuildContext context) {
    return new AppBar(
        title: Text(
          FrettirLocalizations.of(context).get('title'),
          style: TextStyle (
              color: Colors.white
          ),
        ),
      elevation: 0.0,
    );
  }

  // Gets the page's body
  Widget _buildBody() {
    return new SafeArea(
      child: new Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              _buildHeader(), // Container with an image
              Expanded(child: _buildContent()), // Container with a label
              _buildFooter(), // Container with an image
            ],
          )
      ),
      bottom: false,
    );
  }

  // Gets the fixed-height header widget.
  static Widget _buildHeader() {
    return new Column(
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
  }

  // Gets the fixed-height footer widget.
  static Widget _buildFooter() {
    return new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/overview_page_background_bottom.png"
                ),
                repeat: ImageRepeat.repeatX,
                alignment: Alignment.bottomCenter
            )
        ),
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Image(
                image: AssetImage(
                    "assets/overview_page_left_bottom_corner.png"
                ),
                height: 50,
                alignment: Alignment.bottomLeft
            )
        )
    );
  }

  // Gets the dynamic content area of the page.
  static Widget _buildContent() {
    return new Container(
      alignment: Alignment.center,
      child: Center(child: Text("bla")),
    );
  }

  // Gets the bottom-right floating action button.
  Widget _buildFab(BuildContext context) {
    return FloatingActionButton (
        onPressed: _onAddButtonTapped,
        tooltip:
            FrettirLocalizations.of(context).get('overview_page.fab.tooltip'),
        child: Icon(Icons.add));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: _buildAppBar(context),
      body: _buildBody(),
      floatingActionButton: _buildFab(context),
    );
  }
}
