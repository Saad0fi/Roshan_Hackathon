import 'package:flutter/material.dart';
import '../../theme/app_color.dart';
import '../widget/map_widget.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  OverlayEntry? _overlayEntry;
  bool _isHovering = false;

  /// show image for actives when overlay
  void _showCard(BuildContext context, Offset position, image) {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: position.dy - 80 - 100 - 10,
        left: position.dx - (200 / 2),
        child: MouseRegion(
          onEnter: (_) {
            _isHovering = true;
          },
          onExit: (_) {
            _isHovering = false;
            _hideCard();
          },
          child: Image(image: AssetImage(image)),
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  /// hide to remove image
  void _hideCard() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _hideCard();
    super.dispose();
  }

  /// handle tap to call show card method open image
  void _handleTap(TapDownDetails details, image) {
    if (_overlayEntry != null) {
      _hideCard();
    } else {
      _showCard(context, details.globalPosition, image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: /// TabController
      DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomSheet: Container(
            width: 440,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  25.0,
                ),
                topRight: Radius.circular(
                  25.0,
                ),
              ),
            ),
            child:
            /// Tab Bar
                MapWidget(),
          ),
          body: Column(
            children: [
              /// Tab Bar View
              Expanded(
                child: TabBarView(
                  children: [
                    /// 1. view
                    Stack(
                      children: [
                        Image(image: AssetImage("assets/images/map.png"),
                        ),

                        /// Back button manually placed
                        Positioned(
                          top: 40,
                          right: 16,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child:
                            Image(image: AssetImage("assets/images/Frame 1410148804.png")),
                          ),
                        ),
                        buildPinActivities(
                          70,
                          300,
                          "assets/images/Frame 1410148735.png",
                        ),
                        buildPinActivities(
                          70,
                          190,
                          "assets/images/activity1.png",
                        ),
                        buildPinActivities(
                          150,
                          300,
                          "assets/images/activity3.png",
                        ),
                        buildPinActivities(
                          150,
                          400,
                          "assets/images/Frame 1410148734 (1).png",
                        ),
                        buildPinActivities(
                          200,
                          500,
                          "assets/images/challenge2.png",
                        ),
                      ],
                    ),
                    /// 2.view
                    Stack(
                      children: [
                        Image(image: AssetImage("assets/images/map.png")),
                        /// Back button manually placed
                        Positioned(
                          top: 40,
                          right: 16,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child:
                            Image(image: AssetImage("assets/images/Frame 1410148804.png")),
                          ),
                        ),
                        buildPinActivities(
                          70,
                          300,
                          "assets/images/Frame 1410148735.png",
                        ),
                        buildPinActivities(
                          70,
                          190,
                          "assets/images/activity1.png",
                        ),
                        buildPinActivities(
                          150,
                          300,
                          "assets/images/activity3.png",
                        ),
                      ],
                    ),
                    /// 3.view
                    Stack(
                      children: [
                        Image(image: AssetImage("assets/images/map.png")),
                        /// Back button manually placed
                        Positioned(
                          top: 40,
                          right: 16,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child:
                            Image(image: AssetImage("assets/images/Frame 1410148804.png")),
                          ),
                        ),
                        buildPinActivities(
                          150,
                          400,
                          "assets/images/Frame 1410148734 (1).png",
                        ),
                        buildPinActivities(
                          200,
                          500,
                          "assets/images/challenge2.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// build Pin and assign its image
  Positioned buildPinActivities(double left, double top, image) {
    return Positioned(
      left: left,
      top: top,
      child: GestureDetector(
        /// on tap call method to handle tap
        onTapDown: (details) {
          _handleTap(details, image);
        },
        child: Icon(Icons.location_pin, size: 80,
            color: AppColor.greenColor),
      ),
    );
  }
}
