import 'package:flutter/material.dart';
import 'package:healty_pet/models/doctor_model.dart';

class DoctorCard extends StatelessWidget {
  DoctorCard({super.key});

  // final List<Map> doctorData = [
  //   {
  //     'photo': 'lib/asset/image/Rectangle 3764 (1).png',
  //     'name': 'Dr. Stone ',
  //     'service': 'Vaccine, Surgery',
  //     'range': '10km',
  //     'dog': true,
  //     'cat': true
  //   },
  //   {
  //     'photo': 'lib/asset/image/Rectangle 3764.png',
  //     'name': 'Dr. Vanessa',
  //     'service': 'Vaccine, Surgery',
  //     'range': '10km',
  //     'dog': true,
  //     'cat': true
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: doctorData.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Image.asset(doctorData[index].image)
              ],
            ),
          );
        },
      ),
    );
  }
}
