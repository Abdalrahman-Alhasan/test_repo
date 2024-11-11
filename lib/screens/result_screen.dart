import 'package:flutter/material.dart';
import 'package:lec15/logic/bmi%20calciualator.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.note,required this.num});
  final String note;
  final double num;


  @override
  Widget build(BuildContext context) {
    double shh =MediaQuery.sizeOf(context).height;

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
        Expanded(
          child: Container(
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child:Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,


                  children: [
                     Padding(
                       padding:  EdgeInsetsDirectional.only(start: shh/18),

                         child: Text("$note".toString(),
                          style: TextStyle(
                            fontSize: 35,
                            color: Color(0xff79bb99),
                                             ),
                                             ),

                     ),SizedBox(height:shh/3 ,)
                    ,
                    // Text("$num",
                    //   style: TextStyle(
                    //   fontSize: 40,
                    //   color: Colors.green,) ,),
                    Text(
                      num.toStringAsFixed(2), // عرض رقمين بعد الفاصلة
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),



                  ],
                ),
              ),
            ),
          ),
        ),
        ],)
      ),
      bottomNavigationBar:  ElevatedButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text("Re_Calcuate",style:TextStyle(color: Colors.white,fontSize: 30) )
        ,style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),

            backgroundColor: Color(0xffE83D66)

        ),),
    );
  }
}

