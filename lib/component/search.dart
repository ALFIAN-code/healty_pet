import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_pet/style/style.dart';

class Search extends StatelessWidget {
  const Search({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.manrope(
          textStyle:
              bold16.copyWith(color: const Color.fromARGB(255, 105, 105, 105))),
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 240, 240, 240),
          prefixIcon: const Icon(FeatherIcons.search, size: 20,),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 50
          ),
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 17, horizontal: 10),
          hintText: 'Find best vaccinate, treatment...',
          hintStyle: GoogleFonts.manrope(
              textStyle: bold16.copyWith(
                  color: const Color.fromARGB(255, 196, 195, 195))),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
