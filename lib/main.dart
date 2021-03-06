import 'package:demo_project/accordion.dart';
import 'package:demo_project/alert%20and%20menu/alert_menu_inbuilt.dart';
import 'package:demo_project/alert_dialog.dart';
import 'package:demo_project/animatedlist.dart';
import 'package:demo_project/animations.dart';
import 'package:demo_project/app_bars/fixed_app_bar_with_search.dart';
import 'package:demo_project/assignments/bottom_sheet/bottom_sheet.dart';
import 'package:demo_project/assignments/custom_drawer/screens/home.dart';
import 'package:demo_project/assignments/custom_listview.dart';
import 'package:demo_project/assignments/custom_tab/custom_tab.dart';
import 'package:demo_project/assignments/farmers_fresh_zone_ui/home.dart';
import 'package:demo_project/assignments/grid_view/grid_view.dart';
import 'package:demo_project/assignments/gridview%20custom/extended_grid.dart';
import 'package:demo_project/assignments/gridview%20custom/staggered2.dart';
import 'package:demo_project/assignments/login_iu_custom_textfields.dart';
import 'package:demo_project/assignments/profile%20ui/profile.dart';
import 'package:demo_project/assignments/registration_form/login.dart';
import 'package:demo_project/assignments/registration_form/signup.dart';
import 'package:demo_project/assignments/custom_appbar.dart';
import 'package:demo_project/assignments/staggered_grid/staggered_grid.dart';
import 'package:demo_project/assignments/staggered_view2/staggered2.dart';
import 'package:demo_project/bottom_nav_bar.dart';
import 'package:demo_project/bottomsheets/bottom_sheet.dart';
import 'package:demo_project/bottomsheets/bottom_sheet_with_textfield.dart';
import 'package:demo_project/curved_bottom_nav_bar.dart';
import 'package:demo_project/expanded.dart';
import 'package:demo_project/google_nav_bar.dart';
import 'package:demo_project/gridview.dart';
import 'package:demo_project/gridview_builder.dart';
import 'package:demo_project/gridview_custom.dart';
import 'package:demo_project/home_screen.dart';
import 'package:demo_project/listview_builder.dart';
import 'package:demo_project/assignments/contact_book.dart';
import 'package:demo_project/listview_seperated.dart';
import 'package:demo_project/named_routers/home.dart';
import 'package:demo_project/named_routers/profile.dart';
import 'package:demo_project/named_routers/settings.dart';
//import 'package:demo_project/onboarding/onboarding.dart';
//import 'package:demo_project/onboarding/onborading2.dart';
import 'package:demo_project/one_ui_phone.dart';
import 'package:demo_project/phone%20and%20sms/flutter_sms_eg.dart';
import 'package:demo_project/phone%20and%20sms/telephony_eg.dart';
import 'package:demo_project/splash_screen.dart';
import 'package:demo_project/staggered_gridview.dart';
import 'package:demo_project/tab_bars.dart';
import 'package:demo_project/text_field.dart';
import 'package:demo_project/ui/DLF%20ui/dlf_ui.dart';
import 'package:demo_project/ui/category%20ui/category_page.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/home/fitness_home.dart';
import 'package:demo_project/ui/hotel/booking/booking_home.dart';
import 'package:demo_project/ui/hotel/home/hotel_home.dart';
import 'package:demo_project/ui/hotel/room_details/room_main.dart';
import 'package:demo_project/ui/login%20ui/login_1.dart';
import 'package:demo_project/ui/mausam%20ui/mausam_home.dart';
import 'package:demo_project/ui/order%20page%20ui/order_page.dart';
import 'package:demo_project/validation_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my works/splash_screen_for_login.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        'settings': (context) => const SettingsPage(),
        'profile': (context) => const ProfilePage(),
        'home': (context) => const HomePage()
      },
      home:const HotelHome(),
    );
  }
}
