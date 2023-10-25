import 'package:coojar/Onboard/date_of_birth.dart';
import 'package:coojar/Onboard/gender.dart';
import 'package:coojar/Onboard/name.dart';
import 'package:coojar/Onboard/user_mode.dart';
import 'package:coojar/provider/onboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<OnboardProvider>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Material(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFB8053A)),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          var index = provider.index;
                          if (index < 1) {
                            return;
                          }
                          provider.setIndex(index - 1);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )),
                // const SizedBox(height: 30,),
                const SizedBox(
                  height: 50,
                ),
                StepProgressIndicator(
                  totalSteps: 4,
                  currentStep: provider.index + 1,
                  selectedColor: Colors.white,
                  unselectedColor: Colors.pinkAccent,
                ),
                if (provider.index == 0) ...[
                  Name(
                    registerProvider: provider,
                  ),
                ],
                if (provider.index == 1) ...[
                  const DateOfBirth(),
                ],

                if (provider.index == 2) ...[
                  const Gender(),
                ],

                if (provider.index == 3) ...[
                  const UserMode(),
                ],

                if (provider.index == 1) ...[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) => Dialog(
                                    backgroundColor: Colors.white,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text('Confirm your age as 28',
                                                  style: GoogleFonts.figtree(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Please confirm this is your right age as you wont be able to chnage this again',
                                                style: GoogleFonts.figtree(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text(
                                                        'Change',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      )),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text('Confirm',style: TextStyle(fontWeight: FontWeight.bold),)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ));
                        },
                        child: Center(
                            child: Text(
                          'Confirm Age',
                          style: GoogleFonts.figtree(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ))),
                  ),
                ],

                if (provider.index < 3) ...[
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0XFFB8053A)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                var index = provider.index;
                                provider.setIndex(index + 1);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          )),
                    ],
                  ),
                ] else ...[
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Done')),
                    ],
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
