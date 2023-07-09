import 'package:healty_pet/models/services_model.dart';

class DoctorModel {
  String name;
  String image;
  List<String> services;
  String distance;
  bool dog;
  bool cat;
  // Map<String, bool> availableFor;

  DoctorModel(
      {required this.name,
      required this.image,
      required this.distance,
      required this.dog,
      required this.cat,
      required this.services});
}

var doctorData = [
  DoctorModel(
      name: 'Dr. Stone',
      image: 'lib/asset/image/dr.stone.png',
      distance: '10km',
      dog: true,
      cat: true,
      services: [ServiceModel.vaccine, ServiceModel.surgery]),
  DoctorModel(
      name: 'Dr. vanessa',
      image: 'lib/asset/image/dr.vanessa.png',
      distance: '10km',
      dog: true,
      cat: true,
      services: [ServiceModel.vaccine, ServiceModel.surgery]),
  DoctorModel(
      name: 'Dr. vanessa',
      image: 'lib/asset/image/dr.vanessa.png',
      distance: '10km',
      dog: true,
      cat: true,
      services: [ServiceModel.vaccine, ServiceModel.surgery]),
  DoctorModel(
      name: 'Dr. vanessa',
      image: 'lib/asset/image/dr.vanessa.png',
      distance: '10km',
      dog: true,
      cat: true,
      services: [ServiceModel.vaccine, ServiceModel.surgery]),
  DoctorModel(
      name: 'Dr. vanessa',
      image: 'lib/asset/image/dr.vanessa.png',
      distance: '10km',
      dog: true,
      cat: true,
      services: [ServiceModel.vaccine, ServiceModel.surgery]),
  DoctorModel(
      name: 'Dr. vanessa',
      image: 'lib/asset/image/dr.vanessa.png',
      distance: '10km',
      dog: true,
      cat: true,
      services: [ServiceModel.vaccine, ServiceModel.surgery]),

  // DoctorModel(name: 'Dr. Stone', image: 'lib/asset/image/dr.stone.png', distance: '10km', services: '')
];
