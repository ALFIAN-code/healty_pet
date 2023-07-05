import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_pet/style/style.dart';

class Search extends StatelessWidget {
  const Search({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 240, 240),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(22, 10, 5, 10),
            child: Icon(FeatherIcons.search, color: Colors.black54)
          ),

          Expanded(child: TextField(
            style:GoogleFonts.manrope(textStyle: bold16.copyWith(color: const Color.fromARGB(255, 105, 105, 105))),
            decoration: InputDecoration(
            
              hintText: 'Find best vaccinate, treatment...',
              hintStyle: GoogleFonts.manrope(textStyle: bold16.copyWith(color: const Color.fromARGB(255, 196, 195, 195))),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none
              )
            ),
          ))
        ],
      ),
    );
  }
}
