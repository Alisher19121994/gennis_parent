import 'package:flutter/material.dart';
import 'package:parent_app/pages/mainPages/entrance/group_page.dart';
import '../../components/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String id = 'SplashPage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const GroupPage()),
                (route) => false));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Image.asset(
            AppImages.logo,
          ),
        ),
      ),
    );
  }
}
