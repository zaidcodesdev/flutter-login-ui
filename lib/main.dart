import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home:SplashScreen(),
   );
  }
}

  class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double logosize = 80;
  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        logosize = 140;
      });
    });
    
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomePage(),),
      );
    });
  }
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             AnimatedContainer(duration:Duration(seconds: 3),
             curve: Curves.easeInOut,
             width: logosize,
             height: logosize,
             child: Image.asset("assets/Icons/ic_login.png"),),
              SizedBox(
                height: 10,
              ),
             /* Text("My App" ,
              style: TextStyle(color: Colors.white,
              fontSize: 30),)*/
              SizedBox(
                height: 20,
              ),
            SpinKitPouringHourGlassRefined(
                color: Colors.orangeAccent,
                size: 35,

              ),



            ],
          ),
        ),


























      );
  }
}
class HomePage extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
   HomePage ({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Home"),
            centerTitle:true
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                // obscureText: true,
                // obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter your Email here",
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon:Icon(Icons.email),
                  prefixIconColor: Colors.black,
                  filled:false,
                  fillColor: Colors.black,
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.black
                      )
                  ),    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue
                    )
                ),

                ),


              ),SizedBox(
                height: 11,
              ),
              TextField(
                controller: phoneNumberController,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                // obscureText: true,
                // obscuringCharacter: "8",
                decoration: InputDecoration(
                  hintText: "Enter your Phone Number here",
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.call),
                  prefixIconColor: Colors.black,
                  filled: false,
                  fillColor: Colors.black,
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.black
                      )
                  ),    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue
                    )
                ),

                ),
              ),SizedBox(
                height: 11,
              ),
              StatefulBuilder(
                  builder: (context , ss) {
                    return TextField(
                      controller: passWordController,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      // obscuringCharacter: "8",
                      decoration: InputDecoration(
                        hintText: "Enter your Password here",
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.password),
                        prefixIconColor: Colors.black,
                        suffixIcon: InkWell(
                            onTap: (){
                              ss((){});

                            },
                            child: Icon(Icons.visibility_off )),
                        suffixIconColor: Colors.black,
                        filled: false,
                        fillColor: Colors.black,
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.black
                            )
                        ),    focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.blue
                          )
                      ),

                      ),
                    );
                  }
              )




              , SizedBox(
                height: 50,
              )
              , ElevatedButton
                (onPressed:(){}, child: Text("Sign in"),
                style: ElevatedButton.styleFrom(backgroundColor:Colors.blue , foregroundColor: Colors.white ),),
            ],
          ),
        )

    );
  }
  }










