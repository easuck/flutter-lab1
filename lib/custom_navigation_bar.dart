import 'package:flutter/material.dart';
import 'subscriptions.dart';


class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            tabs: const [
              Tab(
                child: Text(
                  "Профиль"
                ),
              ),
              Tab(
                child: Text(
                  "Настройки"
                )
              )
            ],
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                subscriptions(context),       
                const Center(
                  child: Placeholder()
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}