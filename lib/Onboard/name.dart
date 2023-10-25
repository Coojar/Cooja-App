import 'package:coojar/provider/onboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Name extends StatefulWidget {
  final OnboardProvider registerProvider;
  const Name({Key? key, required this.registerProvider}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  TextEditingController userNameController = TextEditingController();

  @override
  void initState() {
    userNameController.text = widget.registerProvider.name??'';
    userNameController.addListener(() {
      widget.registerProvider.setName(userNameController.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'What’s your\nname?',
          style: GoogleFonts.figtree(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
            'This is how it will appear on circle, you won’t be able to change this later',
            style: GoogleFonts.figtree(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal)),
        const SizedBox(
          height: 40,
        ),
        TextFormField(
          style: GoogleFonts.figtree(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
          controller: userNameController,
          decoration: InputDecoration(
            labelText: 'Full Name',
            labelStyle: GoogleFonts.figtree(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey),
            hintText: 'Enter your Full Name',
            hintStyle: GoogleFonts.figtree(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal),
            suffixIcon: userNameController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      userNameController.clear();
                    },
                  ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.deepOrange,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
