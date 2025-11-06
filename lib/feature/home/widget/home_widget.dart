import 'package:flutter/material.dart';
import 'package:Hayyak/feature/events/screen/event_detail_screen.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  /// call tab bar and tab bar view
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [tabBarWidget(), tabBarViewWidget()],
    );
  }

  /// Tabs Design
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

  /// TabBar
  Widget tabBarWidget() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 200,
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
            //Text(""),
            _buildTab("حيّك", _tabController.index == 1),
          ],
        ),
      ),
    );
  }

  /// TabViewBar show details based on TabBar
  Widget tabBarViewWidget() {
    return SizedBox(
      height: 200,
      child: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/Frame 1410148735.png")),
                SizedBox(width: 5),
                Image(
                  image: AssetImage("assets/images/Frame 1410148734 (1).png"),
                ),
                SizedBox(width: 5),
                Image(image: AssetImage("assets/images/Frame 1410148735.png")),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/images/Frame 1410148734 (1).png"),
                ),
                SizedBox(width: 5),
                Image(image: AssetImage("assets/images/Frame 1410148735.png")),
                SizedBox(width: 5),
                Image(
                  image: AssetImage("assets/images/Frame 1410148734 (1).png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
