import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPaid = false;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Group:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            SizedBox(width: 12.0,),
            Text('EC4685433',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:studentsRating() ,
      )

    );
  }
  Widget studentsRating(){
    return Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(4.0),
      height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
        color: Colors.white,
        border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //#balance results
          Container(
           margin: const EdgeInsets.all(2.0),
           padding: const EdgeInsets.all(4.0),
           child: isPaid ? Container(
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  color: Colors.greenAccent,
                  border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
              ),
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Balance:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                  Text('140.233.90',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              )
            ):
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Colors.redAccent,
                        border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
                    ),
                    height: 50,
                    width: double.infinity,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Balance:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
                        Text('-140.233.90',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
                      ],
                    ),
                ),
                const Text('Group payment is NOT done',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 9.0),),

              ],
            ),
         ),
          const SizedBox(height: 4.0),
          //#all details
          Container(
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //#teacher
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.white,
                      border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
                  ),
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.white,
                        height: 60,
                        width: 100,
                        child: const Center(
                          child:Text('Teacher',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 1.0,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(child: Text('Daminov Alisher To\'lqinovich',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis,)),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // width: 100,
                ),
                //#student
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.white,
                      border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
                  ),
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.white,
                        height: 60,
                        width: 100,
                        child: const Center(
                          child:Text('Student',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 1.0,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(child: Text('Abbos Juraev',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis,)),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                 // width: 100,
                ),
                //#group rating
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.white,
                      border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
                  ),
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.white,
                        height: 60,
                        width: 100,
                        child: Center(
                          child:Text('Group rating',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 1.0,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('8',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis,),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // width: 100,
                ),
                //#the last test result
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.white,
                      border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
                  ),
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.white,
                        height: 60,
                        width: 100,
                        child: Center(
                          child:Text('Final test',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 1.0,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('123',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis,),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // width: 100,
                ),
                //#Date
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.white,
                      border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
                  ),
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        color: Colors.white,
                        height: 60,
                        width: 100,
                        child: Center(
                          child:Text('Date',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 1.0,
                        color: Colors.black12,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: Colors.white,
                          height: 60,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(child: Text('Participating in Lesson',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis,)),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // width: 100,
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
                children: [

                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                  ratingResults(),
                ],
              )
          )

        ],
      ),
    );
  }
  Widget ratingResults(){
    //#students rating Results
   return Container(
     margin: const EdgeInsets.symmetric(horizontal: 6.0),
     padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.white,
          border: Border.all(width: 1.0,style: BorderStyle.solid,color: Colors.black12)
      ),
      height: 45,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            color: Colors.white,
            height: 45,
            width: 93,
            child: const Center(
              child:Text('12.09.2023',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height *1,
            width: 1.0,
            color: Colors.black12,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              height: 45,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.5,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2000,
                  percent: 0.9,
                  center: Text("90.0%"),
                  barRadius: const Radius.circular(12.0),
                  progressColor: Colors.greenAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
