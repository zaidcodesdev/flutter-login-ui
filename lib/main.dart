import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home:HomePage(),
   );
  }
}

  class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Home"),
          centerTitle:true
        ),

        body:SizedBox(
          width: 300,
          height: 500,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(11)
            ),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                children: [
                     Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/a4/Salman_Khan_snapped_at_the_Angry_Young_Men_trailer_launch.jpg"),fit: BoxFit.cover)
                      ),
                    ),

                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Salman Khan", style: TextStyle(fontSize: 19, fontWeight: FontWeight(50)),),
                            SizedBox(
                              width: 3,
                            ),
                            Image.asset("assets/Icons/ic_approved.png", width: 22, height: 25,)
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Text("Product designer who focuses on simplicity and usability" , style: TextStyle(fontWeight:FontWeight.w500, fontSize: 13, color: Colors.grey),)),




                          ],
                        ),SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/Icons/ic_user.png" , width: 20, height: 22,),
                            SizedBox(
                              width: 5,
                            ),
                            Text("524"),
                            Spacer(),
                            Image.asset("assets/Icons/ic_checklist white.png", width: 20, height: 22,),
                            SizedBox(
                              width: 5,
                            ),
                            Text("16"),
                            Spacer(
                              flex: 2,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(colors:[
                                  Colors.grey.shade200,
                                  Colors.grey.shade400
                                ],begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter
                                )
                              ),
                              child: Text("Follow +"),
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
        )






       















      );
  }
  }

