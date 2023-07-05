import 'package:flutter/material.dart';
import 'package:healty_pet/models/services_model.dart';
import 'package:healty_pet/style/style.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

List searchList = ServiceModel.all();
int selected = 0;

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.separated(
        itemCount: searchList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              // height: 30,
              decoration: BoxDecoration(
                  color: (selected == index)
                      ? primary1
                      : const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(13),
                  border: (selected == index)
                      ? Border.all(color: primary2.withAlpha(255), width: 3)
                      : null),

              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Center(
                  child: Text(
                searchList[index],
                style: bold14.copyWith(
                    color: (selected == index)
                        ? Colors.white
                        : const Color.fromARGB(255, 196, 195, 195)),
              )),
            ),
          );
        },
      ),
    );
  }
}
