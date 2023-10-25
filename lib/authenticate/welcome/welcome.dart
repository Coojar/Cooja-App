import 'package:coojar/authenticate/Register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover
            )
        ),
        child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Coojar',style: GoogleFonts.urbanist(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('Welcome back! Glad\nto see you, Again!,',style: GoogleFonts.urbanist(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 200,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.apple,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Continue with Apple",style: GoogleFonts.figtree(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.google,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Continue with Google",style: GoogleFonts.figtree(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('By signing up, you agree to our Terms. See how we use your data in our Privacy Policy',style: GoogleFonts.figtree(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)

            ],
          ),
        ),
      ),
    );
  }
}
