import 'package:coojar/component/card/card_option.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool maleCheck = false;
    bool femaleCheck = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'What is your\nGender?',
          style: GoogleFonts.figtree(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Text('You can always update this later in your preference setting',
            style: GoogleFonts.figtree(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal)),
        const SizedBox(
          height: 40,
        ),
        CardOption(
          title: 'Male',
          subtitle: '',
          value: maleCheck,
          function: (){

          },
          // function: () => setState(() {
          //   maleCheck = !maleCheck;
          //   maleCheck = false;
          // }),
        ),
        const SizedBox(
          height: 20,
        ),
        CardOption(
          title: 'Female',
          subtitle: '',
          value: femaleCheck,
          function: () {

          },
          // function: () => setState(() {
          //   femaleCheck = !femaleCheck;
          //   femaleCheck = false;
          // }),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}