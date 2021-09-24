import './user.dart';

class Customer {
  final int id;
  final String contact_number;
  final String address_barangay;
  final String address_municipality;

  Customer(this.id, this.contact_number, this.address_barangay,
      this.address_municipality);
}
