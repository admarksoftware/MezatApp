import 'package:flutter/material.dart';

import 'bos_sayfa.dart';
import 'kategoriler.dart';
import 'magazalar_gridview.dart';

class Magazalar extends StatefulWidget {
  @override
  _MagazalarState createState() => _MagazalarState();
}

class _MagazalarState extends State<Magazalar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TabBar(
                isScrollable: true,
                controller: _tabController,
                indicatorPadding: EdgeInsets.only(top: 10, bottom: 10),
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12),
                    child: Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Yakındakiler"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black12),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Popüler"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black12),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Yeniler"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black12),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Kategoriler"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black12),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Ürünler"),
                      ),
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  MagazlarGridView(),
                  BosSayfa(),
                  BosSayfa(),
                  Kategoriler(),
                  BosSayfa(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
