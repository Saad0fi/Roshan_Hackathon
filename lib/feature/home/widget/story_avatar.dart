import 'package:flutter/material.dart';

class StoryAvatarWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool showAddStory;
  final double mainRadius;
  final double addRadius;

  const StoryAvatarWidget({
    super.key,
    required this.imagePath,
    required this.text,
    this.showAddStory = false,
    this.mainRadius = 50,
    this.addRadius = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: mainRadius,
              backgroundColor: showAddStory
                  ? Color(0xffCACACD)
                  : Color(0xffB57EDC),
              backgroundImage: AssetImage(imagePath),
            ),
            if (showAddStory)
              Positioned(
                bottom: 0,
                left: 0,
                child: CircleAvatar(
                  radius: addRadius,
                  backgroundImage: AssetImage("assets/images/add_story_.png"),
                ),
              ),
          ],
        ),
        Text(text),
      ],
    );
  }
}
