import 'package:flutter/material.dart';

/// Tab Bar
class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late TabController? _tabController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabController = DefaultTabController.of(context);
    _tabController!.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_tabController == null) {
      return SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 280,
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
                _buildTab("الكل", _tabController!.index == 0),
                _buildTab("الفعاليات", _tabController!.index == 1),
                _buildTab("التحديات", _tabController!.index == 2),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Tabs Design
  Widget _buildTab(String text, bool isSelected) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Container(
          height: 32,
          width: 96,
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
}
