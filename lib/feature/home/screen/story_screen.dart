import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final StoryController controller = StoryController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.pageImage(
                url:
                    //
                    "https://i.ibb.co/21GTWCWC/a381356eec68d1ce11845bf9aea308489cf1b37b-1.jpg",

                controller: controller,
              ),

              StoryItem.pageImage(
                url: "https://i.ibb.co/7JDdbrbR/image.gif",

                controller: controller,
              ),
            ],
            onStoryShow: (storyItem, index) {
              print("Showing story $index");
            },
            onComplete: () {
              Navigator.of(context).pop();
            },

            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: controller,
          ),

          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.close, color: Colors.white, size: 24),
                      ),
                    ),

                    Row(
                      children: [
                        Row(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "4h",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "ابو محمد",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(
                            "assets/images/Avatar2.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          CupertinoIcons.arrowshape_turn_up_right_fill,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "مشاركه",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),

                    SizedBox(width: 20),

                    Column(
                      children: [
                        Icon(Icons.thumb_up, color: Colors.white, size: 20),
                        SizedBox(width: 4),
                        Text(
                          "24",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),

                    SizedBox(width: 20),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "...اكتب تعليقك",
                            hintStyle: TextStyle(
                              color: Color(0xff90908F),
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
