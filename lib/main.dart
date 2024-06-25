import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:realestate/core/constants/colors_constants.dart';
import 'package:realestate/view/app_navigation/app_navigation_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Real Estate',
      theme: ThemeData(
        fontFamily: 'Euclid',
        primaryColor: ColorConstants.primaryColor
      ),
      home: ResponsiveSizer(
          builder: (context,orientation, screenType){
          return const AppNavigationView();
        }
      ),
    );
  }
}

