import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  final String image, title, type;

  const ProfileWidget({
    super.key,
    required this.image,
    required this.title,
    required this.type,
  });

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  bool isActive = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 20),
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
        ),
      ),
      child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                children: [
                  Image(image: AssetImage(widget.image)),
                  Text(
                    widget.title,
                    style: TextTheme.of(context).headlineSmall,
                  ),
                ],
              ),
              if (widget.type == "mode")
                Switch(
                  activeThumbColor: Colors.white,
                  activeTrackColor: Color(0xffB2B2B2),
                  value: isActive,
                  onChanged: (value) {
                    setState(() {
                      isActive = value;
                    });
                  },
                ),
            ],
          ),
    );
  }


}
