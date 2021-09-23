import './user.dart';

class Customer {
  final String contact_number;
  final String address_barangay;
  final String address_municipality;
  User user;
  static const String tableName = 'customer';

  Customer(this.contact_number, this.address_barangay,
      this.address_municipality, this.user);
}
