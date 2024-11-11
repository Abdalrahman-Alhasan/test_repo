import 'package:flutter/material.dart';
import 'package:lec15/logic/bmi%20calciualator.dart';
import 'package:lec15/screens/result_screen.dart';

class CalcualatorScreen extends StatefulWidget {
  const CalcualatorScreen({super.key});


  @override
  State<CalcualatorScreen> createState() => _CalcualatorScreenState();
}

class _CalcualatorScreenState extends State<CalcualatorScreen> {

  // double currentsliderValeu=0;

  HealthCheck healthCheck= HealthCheck ();
  @override
  Widget build(BuildContext context) {
    double sh= MediaQuery.sizeOf(context).height;
    double wh= MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: Drawer(child: Icon(Icons.list,color: Colors.white,),),
      appBar: AppBar(

        backgroundColor:Color(0xff1B1E2F),
        title: Text("IBM Calcualator",
          style:TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white),) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(onTap: (){
                          setState(() {
                            
                            healthCheck.gender=true;
                          });
        
                        },
                          child: Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.only()
                            // color: Theme.of(context).primaryColor,
                            decoration:BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),

                            width: 150,
                            height: sh/5.8,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.male_sharp,size: 40,color: Colors.white,),
                                  SizedBox(height: sh/40,),
                                  Text("male",style: TextStyle(
                                    fontSize: 30
                                        ,color: Colors.white
                                  ),),
        
        
        
                                ],
        
        
                              ),
                            ),
        
                          ),
                        ),SizedBox(width: sh/25,),
                        InkWell(
                          onTap:     (){
                          setState(() {
                            healthCheck.gender=false;

                          });
        
                        },
                          child: Container(
                            decoration:BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                              height: sh/5.8,
                              width: 150,
                              // color: Theme.of(context).primaryColor,
        
        
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.female_sharp,size: 40,color: Colors.white,),
                                  SizedBox(height: sh/40,),
                                  Text("female",style: TextStyle(
                                      fontSize: 30
                                      ,color: Colors.white
                                  ),)
                                ],
        
        
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                SizedBox(height: sh/35,),
              
                    Container(
                      decoration:BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      //
                      // color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: sh/3.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
        
                          Text("HEIGHT",style: TextStyle(
                            fontSize: 30,fontWeight:FontWeight.bold,
                            color: Colors.white38
                          ),),SizedBox(height: sh/40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${healthCheck.height.round()}",style: TextStyle(
                                  fontSize: 45,fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                              SizedBox(width: 10,),
                              Text("cm",style: TextStyle(
                                fontSize: 20,color: Colors.white24,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          )
                          ,  SizedBox(height: sh/35,)
                       ,   Slider(value:
                          healthCheck.height,
                              max: 200,
                              min:0 ,
                              divisions: 200,
                              label: healthCheck.height.round().toString(),
                              activeColor: Color(0xffE83D66)
                              , onChanged:(double value){
                                setState(() {
                                  healthCheck.height=value;
        
                                });
        
        
                              } ),
        
        
        
                        ],
        
                      ),
                    ),SizedBox(height: sh/35,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: sh/4,
                              width: 150,
                              // color: Theme.of(context).primaryColor,
                              decoration:BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Column(
                                children:[ Text("WEIGHT",
                                  style:TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                      color:Colors.white70
                                
                                
                                ),),
                                  Text("${healthCheck.weight}",style: TextStyle(
                                      fontSize: 50,fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40,
                                        height:40 ,
                                        // color:Theme.of(context).primaryColor,
                                    decoration:BoxDecoration(
                                        color:Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
        
        
                                          blurRadius: 15,
                                          offset: Offset(0, 5)
                                        )
                                      ]
              
                                    )
                                        ,
                                          // color:  Theme.of(context).primaryColor,
                                          child: InkWell(onTap:(){
                                            setState(() {
        
                                              healthCheck.weight--;
                                            });
                                            Colors.red;
              
                                          } ,
                                            child:Icon(Icons.remove,color: Colors.white,),),
              
                                      ),
                                      SizedBox(width: 15,),
                                      Container(
                                        width: 40,
                                        height:40,
                                        decoration:BoxDecoration(
        
                                            color:Theme.of(context).primaryColor,
                                            borderRadius: BorderRadius.circular(25),
                                            boxShadow: [
                                              BoxShadow(
        
                                                  blurRadius: 15,
                                                  offset: Offset(0, 5)
                                              )
                                            ]
              
                                        )
                                        ,
                                        // color:  Theme.of(context).primaryColor,
                                        child: InkWell(onTap:(){
                                          setState(() {
                                            healthCheck.weight++;
                                          });
              
                                        } ,
                                          child:Icon(Icons.add,color: Colors.white,),),
              
                                      ),
              
              
              
                                     ]
                                  ),
                      ]
                              ),
                            ),
                          ],
              
                        ),
                        SizedBox(width: sh/24,),
                        Column(
                          children: [
                            Container(
                              height: sh/4,
                              width: 150,
                              decoration:BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              // color: Theme.of(context).primaryColor,
                              child: Column(
                                  children:[ Text("AGE",
                                    style:TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white70
              
              
                                    ),),
                                    Text("${healthCheck.age}",style: TextStyle(
                                        fontSize: 50,fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),SizedBox(height: 20,),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 40,
                                            height:40 ,
                                            decoration:BoxDecoration(
                                                color:Theme.of(context).primaryColor,
                                                borderRadius: BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
        
                                                      blurRadius: 15,
                                                      offset: Offset(0, 5)
                                                  )
                                                ]
              
                                            )
                                            ,
                                            // color:  Theme.of(context).primaryColor,
                                            child: InkWell(onTap:(){
                                              setState(() {
                                                healthCheck.age--;
                                              });
              
                                            } ,
                                              child:Icon(Icons.remove,color: Colors.white,),),
              
                                          ),
                                          SizedBox(width:  10,),
                                          Container(
                                            width: 40,
                                            height:40,
                                            decoration:BoxDecoration(
                                                color:Theme.of(context).primaryColor,
                                                borderRadius: BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
        
                                                      blurRadius: 15,
                                                      offset: Offset(0, 5)
                                                  )
                                                ]
              
                                            )
                                            ,
                                            // color:  Theme.of(context).primaryColor,
                                            child: InkWell(onTap:(){
                                              setState(() {
                                                healthCheck.age++;
                                              });
              
                                            } ,
                                              child:Icon(Icons.add,color: Colors.white,),),
              
                                          ),
              
              
              
                                        ]
                                    ),
                                  ]
                              ),
                            )
                          ],
              
                        )
              
                      ],
                    )
                  ],
                ),
              
              ),
           
            ],
            
          ),
        ),
      ),
      bottomNavigationBar:  MaterialButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultScreen(note: healthCheck.healthStatus(),num: healthCheck.calculateBMI(),)));
      }, child: Text("Calcuate",style:TextStyle(color: Colors.white,fontSize: 30) )
      ,  color:Color(0xffE83D66),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),),
   //  ,style: ElevatedButton.styleFrom(
   //        shape: RoundedRectangleBorder(
   //          borderRadius: BorderRadius.only(
   //    topLeft: Radius.circular(0),
   //            topRight: Radius.circular(0),
   //            bottomLeft: Radius.circular(5),
   //            bottomRight: Radius.circular(5),
   // ),),
   //

        ),

    );
  }
}

