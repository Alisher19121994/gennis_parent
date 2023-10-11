import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parent_app/components/app_images.dart';
import 'package:parent_app/pages/mainPages/homePage/home_page.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});
  static const String id = 'GroupPage';

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  late ConnectivityResult result;
  late StreamSubscription subscription;
  var isConnected = false;

  startStreaming(BuildContext context) async {
    subscription = Connectivity().onConnectivityChanged.listen((event) {
      checkInternet(context);
    });
  }
  Future<void> dialogBuilder(BuildContext context) {
    return Dialogs.materialDialog(
        barrierDismissible: false,
        color: Colors.red,
        msg: 'Please, connect to the internet',
        title: 'ERROR',
        customViewPosition: CustomViewPosition.BEFORE_ACTION,
        context: context,
        actions: [
          IconsButton(
            onPressed: () {
              checkInternet(context);
              Navigator.of(context).pop();
            },
            text: 'Try again',
            iconData: Icons.done,
            color: Colors.blue,
            textStyle: const TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ]);
  }
  checkInternet(BuildContext context) async {
    result = await Connectivity().checkConnectivity();
    if (result != ConnectivityResult.none) {
      isConnected = true;
    } else {
      isConnected = false;
      dialogBuilder(context);
    }
  }

@override
  void initState() {
    startStreaming(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Image.asset(
                AppImages.appbarlogo,
              ),
            ),
            const Text('Groups',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)
          ],
        ),
      ),
      body: ListView(
        children: [
          groupOfStudent(),
          groupOfStudent(),
          groupOfStudent(),
        ],
      ),

    );
  }

  Widget groupOfStudent(){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HomePage.id);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(AppImages.book),
            fit: BoxFit.cover
          )
        ),
        margin: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,right: 8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text('EC4685433',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 12.0),
              Text('English',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 12.0),
            ],
          ),
      ),
    );
  }
}
