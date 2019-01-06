import 'package:flutter/material.dart';
import 'package:frettir_app/controls/feed_list_item_viewmodel.dart';
import 'package:frettir_app/helper/constants.dart';
import 'package:frettir_app/helper/theme.dart';

// The feed list widget shows an overview of all stored feeds.
class FeedListWidget extends StatefulWidget {
  _FeedListWidgetState createState() => _FeedListWidgetState();
}

class _FeedListWidgetState extends State<FeedListWidget> {
  List<FeedListItemViewModel> items = FeedListItemViewModel.fixture;

  List<Widget> _buildCarouselItems(BuildContext context) {
    var listItems = new List<Widget>();

    // Add left spacer
    listItems.add(new Container(
        width:
            (MediaQuery.of(context).size.width - FrettirConstants.cardWidth) /
                    2 +
                (FrettirConstants.cardSpacing / 2)));

    // Add cards for each items
    for (FeedListItemViewModel viewModel in items) {
      var container = new Card(
          color: viewModel.backgroundColor,
          elevation: 2.0,
          child: Container(
              width: FrettirConstants.cardWidth,
              child: Column(children: [
                Image(
                  image: NetworkImage(viewModel.image),
                  height: FrettirConstants.cardImageHeight,
                  width: FrettirConstants.cardWidth,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Padding(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            viewModel.title,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.title,
                          )),
                      padding: EdgeInsets.all(FrettirConstants.cardSpacing),
                    ),
                    Padding(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            viewModel.subtitle,
                            maxLines: 4,
                          )),
                      padding: EdgeInsets.all(FrettirConstants.cardSpacing),
                    )
                  ],
                ),
              ])));

      // Append new container to list
      listItems.add(container);
    }

    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: _buildCarouselItems(context),
      controller: new ScrollController(debugLabel: "Carousel"),
    );
  }
}
