import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_pet/component/hero_card.dart';
import 'package:healty_pet/component/search.dart';
import 'package:healty_pet/style/style.dart';
import 'package:feather_icons/feather_icons.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final TextEditingController _controller = TextEditingController(); 

  final PreferredSize appbar = PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 60, 25, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hello, Human!',
                style: GoogleFonts.manrope(textStyle: extraBold26.copyWith(color: const Color(0xff3F3E3F)))),

                Stack(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.shoppingBag, color: Color(0xff818AF9),)),
                    Positioned(
                      top: 2,
                      right: 4,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const ShapeDecoration(
                          color: accent1,
                          shape: CircleBorder()
                        ),
                        child: Text('2', style: bold14.copyWith(color: Colors.white, fontSize: 13),),),
                    )
                  ],
                )
              
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    
    var deviceHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - appbar.preferredSize.height;

    return Scaffold(
      appBar: appbar,
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            //hero card
            const SizedBox(height: 20,),
            HeroCard(deviceheight: deviceHeight,),
            const SizedBox(
              height: 25,
            ),
            //search bar
            Search(controller: _controller,)

            //tab bar
            //
          ],
        ),
      ),
    );
  }
}
