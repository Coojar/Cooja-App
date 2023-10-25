import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateOfBirth extends StatelessWidget {
  const DateOfBirth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'When is your\nbirthday?',
          style: GoogleFonts.figtree(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Text('We don’t show your birthday to potential matches, just your age',
            style: GoogleFonts.figtree(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal)),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Day',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.figtree(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'DD',
                        hintStyle: GoogleFonts.figtree(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Month',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.figtree(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'MM',
                        hintStyle: GoogleFonts.figtree(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Year',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.figtree(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'YYYY',
                        hintStyle: GoogleFonts.figtree(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        )
      ],
    );
  }
}
