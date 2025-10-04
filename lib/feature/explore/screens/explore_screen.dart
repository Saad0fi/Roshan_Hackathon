import 'package:flutter/material.dart';
import 'package:roshan/feature/common/widget/header.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<String> allImages = [
    "assets/images/Frame 1410148735.png",
    "assets/images/challenge2.png",
    "assets/images/Frame 1410148734 (1).png",
    "assets/images/activity1.png",
    "assets/images/activity3.png",
  ];

  List<String> activities = [
    "assets/images/Frame 1410148735.png",
    "assets/images/activity1.png",
    "assets/images/activity3.png",
  ];

  List<String> challenges = [
    "assets/images/Frame 1410148734 (1).png",
    "assets/images/challenge2.png",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentGeometry.topRight,
                            child: Text(
                              "ابحث عن فعالية أو تحدي",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.search, color: Colors.grey[600], size: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),

                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.tune, color: Colors.grey[600], size: 20),
                ),
              ],
            ),
          ),
          tabBarWidget(),
          Expanded(child: tabBarViewWidget()),
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool isSelected) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Container(
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected
                ? Color(0xff81C784)
                : Color(0xff81C784).withOpacity(0.5),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Widget tabBarWidget() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Container(
          width: 300,
          child: TabBar(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            controller: _tabController,
            indicatorWeight: 0,
            labelPadding: EdgeInsets.only(top: 6),
            indicator: BoxDecoration(),
            dividerHeight: 0,
            unselectedLabelColor: Color(0xff81C784),
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              _buildTab("الكل", _tabController.index == 0),
              _buildTab("الفعاليات", _tabController.index == 1),
              _buildTab("التحديات", _tabController.index == 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabBarViewWidget() {
    return TabBarView(
      controller: _tabController,
      children: [
        _buildGridView(allImages),
        _buildGridView(activities),
        _buildGridView(challenges),
      ],
    );
  }

  Widget _buildGridView(List<String> images) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image(image: AssetImage(images[index]));
      },
    );
  }
}
