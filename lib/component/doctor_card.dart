import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healty_pet/models/doctor_model.dart';
import 'package:healty_pet/style/style.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

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
    return ListView.separated(
      itemCount: doctorData.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(17, 0, 0, 0),
                    blurStyle: BlurStyle.normal,
                    blurRadius: 10)
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    doctorData[index].image,
                    height: 103,
                    width: 88,
                  )),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorData[index].name,
                        style: bold16.copyWith(
                            color: const Color.fromARGB(255, 78, 78, 78)),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                          'services : ${doctorData[index].services.join(', ')}'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            FeatherIcons.mapPin,
                            size: 14,
                            color: Color(0xffACA3A3),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            doctorData[index].distance,
                            style: regular14.copyWith(
                                color: const Color(0xffACA3A3)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height:10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Available for',
                            style:
                                bold14.copyWith(color: const Color(0xff50CC98)),
                          ),
                          const Spacer(),
                          SvgPicture.asset('lib/asset/image/cat.svg', height: 15),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('lib/asset/image/dog.svg',  height: 15)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
