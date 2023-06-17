import 'package:dogdom/screens/select_screen.dart';
import 'package:dogdom/widget/search_bar.dart';
import 'package:flutter/material.dart';

import 'discover_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 74,
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.orange,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(
                              child: Text(
                                'Select',
                                style: TextStyle(
                                    fontWeight: _tabController.index == 0
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    fontSize: 17),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Discover',
                                style: TextStyle(
                                    fontWeight: _tabController.index == 1
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.notifications_none,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SearchBarWidget(),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height - 48,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                       SelectScreen(),
                       DiscoverScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
