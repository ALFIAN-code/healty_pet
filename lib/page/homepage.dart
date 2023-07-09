import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_pet/component/doctor_card.dart';
import 'package:healty_pet/component/hero_card.dart';
import 'package:healty_pet/component/search.dart';
import 'package:healty_pet/component/search_list.dart';
import 'package:healty_pet/style/style.dart';
import 'package:feather_icons/feather_icons.dart';

final TextEditingController controller = TextEditingController();

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PreferredSize appbar = PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello, Human!',
                    style: GoogleFonts.manrope(
                        textStyle: extraBold26.copyWith(
                            color: const Color(0xff3F3E3F)))),
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.shoppingBag,
                          color: Color(0xff818AF9),
                        )),
                    Positioned(
                      top: 2,
                      right: 4,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const ShapeDecoration(
                            color: accent1, shape: CircleBorder()),
                        child: Text(
                          '2',
                          style:
                              bold14.copyWith(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const HeroCard(),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbar.preferredSize.height;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
          // _controller.clear();
        }
      },
      child: Scaffold(
          // appBar: appbar,
          body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                toolbarHeight: deviceHeight * 0.4,
                backgroundColor: Colors.transparent,
                flexibleSpace: appbar,
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                //hero card

                // const SizedBox(
                //   height: 25,
                // ),
                Search(
                  controller: controller,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SearchList(),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(child: DoctorCard())

                //tab bar
                //
              ],
            ),
          ),
        ),
      )),
    );
  }
}
