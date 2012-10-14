library Address;

import 'dart:json';
import 'package:logging/logging.dart';

abstract class AddressBase {
  String surname;
  String forename;
  String address1;
  String address2;

  get fullname => "$forename $surname";
  
  factory AddressBase() {
    return new Address(); 
  }
}

class Address implements AddressBase {
  var _surname;
  String get surname => _surname;
  set surname(String value) {
    if (value == null) {
       throw new Exception("null surname is not allowed");
    }
    _surname = value;
  }
  
  String forename = "";
  String address1;
  String address2;

  get fullname => "$forename $surname";
  
  Address(this.surname) {}
}




log(AddressBase address) {
  new Logger("Address").log(Level.INFO, address);
}