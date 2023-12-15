import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBar createState() => _CustomTabBar();
}

class _CustomTabBar extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: selectedIndex,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context){
    return TabBar(
      tabs:[
        Tab(text: "Профиль"),
        Tab(text: "Настройки")
      ],
      controller: tabController,
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                  tabController.animateTo(index);
                });
              },
    );
  }

}




 