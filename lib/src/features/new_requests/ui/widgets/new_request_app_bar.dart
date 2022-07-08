import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewRequestsAppBar extends StatefulWidget {
  const NewRequestsAppBar({
    Key? key,
    this.changeCurrentTab,
    this.currentTab = 0,
  }) : super(key: key);
  final ValueSetter<int>? changeCurrentTab;
  final int currentTab;

  @override
  State<NewRequestsAppBar> createState() => _NewRequestsAppBarState();
}

class _NewRequestsAppBarState extends State<NewRequestsAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: TabBar(
        labelColor: Colors.blue,
        automaticIndicatorColorAdjustment: true,
        controller: TabController(
          length: 4,
          vsync: this,
          initialIndex: widget.currentTab,
        ),
        onTap: widget.changeCurrentTab,
        tabs: const [
          Tab(
            icon: FaIcon(FontAwesomeIcons.hospitalUser),
            text: 'Demographics',
          ),
          Tab(
            icon: FaIcon(FontAwesomeIcons.userDoctor),
            text: 'Practitioner',
          ),
          Tab(
            icon: FaIcon(FontAwesomeIcons.bookBookmark),
            text: 'Encounter',
          ),
          Tab(
            icon: FaIcon(FontAwesomeIcons.boxesStacked),
            text: 'Insurance',
          ),
        ],
      ),
    );
  }
}
