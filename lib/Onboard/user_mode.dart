import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/card/card_option.dart';

class UserMode extends StatelessWidget {
  const UserMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool beaverCheck = false;
    bool  chameleonCheck = false;
    bool  unicornCheck = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'Choose a mode to\nget started?',
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
          title: 'Beaver',
          subtitle: 'As a beaver you have the following  ',
          value: beaverCheck,
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
          title: 'Chameleon',
          subtitle: 'As a Chameleon you have the following  ',
          value: beaverCheck,
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
          title: 'Unicorn',
          subtitle: 'As a Unicorn you have the following  ',
          value: beaverCheck,
          function: (){

          },
          // function: () => setState(() {
          //   maleCheck = !maleCheck;
          //   maleCheck = false;
          // }),
        ),

      ],
    );
  }
}

