import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 10, 5, 10),
            child: SvgPicture.asset('lib/asset/image/search.svg', height: 25,),
          ),

          Expanded(child: TextField(
            style: bold16.copyWith(color: const Color.fromARGB(255, 105, 105, 105)),
            decoration: InputDecoration(
            
              hintText: 'Find best vaccinate, treatment...',
              hintStyle: bold16.copyWith(color: const Color.fromARGB(255, 196, 195, 195)),
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
