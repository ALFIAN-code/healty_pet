import 'package:flutter/material.dart';
import 'package:healty_pet/component/custom_button.dart';
import 'package:healty_pet/style/style.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({super.key, required this.deviceheight});

  final double deviceheight;

  @override
  Widget build(BuildContext context) {
    // var deviceWidth = MediaQuery.of(context).size.width - 40;
    return AspectRatio(
      aspectRatio: 336 / 184,
      child: Container(
          clipBehavior: Clip.hardEdge,
          // height: deviceheight * 0.3,
          // width: double.infinity,
          decoration: BoxDecoration(
              color: primary1, borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Image.asset('lib/asset/image/Background_card.png', height:double.maxFinite, width: double.maxFinite, fit: BoxFit.cover,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'your ',
                            style: GoogleFonts.manrope(
                                textStyle: regular16.copyWith(
                                    color: Colors.white))),
                        TextSpan(
                            text: 'Catrine ',
                            style: GoogleFonts.manrope(
                                textStyle: extraBold16.copyWith(
                                    color: Colors.white))),
                        TextSpan(
                            text: 'will get\nvaccination ',
                            style: GoogleFonts.manrope(
                                textStyle: regular16.copyWith(
                                    color: Colors.white))),
                        TextSpan(
                            text: 'Tomorrow\nat 07.00 am!  ',
                            style: GoogleFonts.manrope(
                                textStyle: extraBold16.copyWith(
                                    color: Colors.white))),
                      ])),
                      CustomButton(
                        onTap: () {},
                        color: Colors.white.withAlpha(80),
                        borderColor: Colors.white.withAlpha(40),
                        
                        child: Text(
                          'See details',
                          style: bold16.copyWith(color: Colors.white),
                        ),
                      )
                    ]),
              )
            ],
          )),
    );
  }
}
