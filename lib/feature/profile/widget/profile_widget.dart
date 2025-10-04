import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme/app_color.dart';

class ProfileWidget extends StatefulWidget {
  final String image,title,type;
  //final Function(ThemeMode)? toggleThemeMode;

  const ProfileWidget({super.key, required this.image, required this.title, required this.type});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {

  //ThemeMode
  bool isActive = false;
  ThemeMode _themeMode = ThemeMode.system;




  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   loadThemeMode();
  // }
  // /// load previous data for mode and language
  // Future<void> loadThemeMode() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool active = prefs.getBool('isActive') ?? false;
  //   isActive = active;
  //   setState(() {});
  //   print(active);
  //
  // }
  //
  //
  // /// save theme mode value and  isActive value
  // Future<void> saveThemeMode(bool value, bool isActive) async {
  //   final pref = await SharedPreferences.getInstance();
  //   await pref.setBool('isDarkMode', value);
  //   await pref.setBool('isActive', isActive);
  //   print("save");
  //
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 20),
      height: 53,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:  Theme.of(context).colorScheme.primary.withOpacity(0.3),
          //   Color(0xff1E1E2C33)
          )
      ),
      child:
          ///stoop here profile branch
      Row(//spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(spacing: 10,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [  Image(image: AssetImage(widget.image)),
          Text(widget.title,style: TextTheme.of(context).headlineSmall,),
          ]),
          if(widget.type == "mode")
Switch(activeThumbColor: Colors.white,
            activeTrackColor:  Color(0xffB2B2B2),
  // inactiveThumbColor :Colors.white,
  // inactiveTrackColor:  Color(0xffB2B2B2),
  value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value;
               // _themeMode = isActive ? ThemeMode.dark : ThemeMode.light;
                // if (widget.toggleThemeMode != null) {
                //   widget.toggleThemeMode!(_themeMode);
                // }
                // print("switch: $isActive");
                // /// save to SharedPreferences
                // saveThemeMode(value, isActive);
              });
            },
          )
             ,
           //   : null
        ],
      ), );
  }



  // Container buildSettings(image,title,type) {
  //   return Container(
  //     padding: EdgeInsets.only(right: 10),
  //     height: 53,
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //         border: Border.all(color: Color(0xff1E1E2C33))
  //     ),
  //     child:
  //     Row(spacing: 10,
  //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Image(image: AssetImage(image)),
  //         Text(title,style: TextStyle(fontSize: 14),),
  //         // ?type == "mode" ?
  //         //     Switch(value: value, onChanged: onChanged)
  //         //     : null
  //       ],
  //     ), );
  // }
}


