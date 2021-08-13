import 'package:esewa_pnp/esewa.dart';
import 'package:esewa_pnp/esewa_pnp.dart';

class EsewaPayment {
  static ESewaConfiguration _configuration = ESewaConfiguration(
      clientID: "JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R",
      secretKey: "BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==",
      environment: ESewaConfiguration.ENVIRONMENT_TEST //env 
      );

  static ESewaPnp _eSewaPnp = ESewaPnp(configuration: _configuration);

  void esewaPayment() async {
    try {
      ESewaPayment _payment = ESewaPayment(
        amount: 800,
        productName: "Pubg UC Payment",
        productID: "agd55agaga85hr",
        callBackURL: "<Call-Back-URL>", // some callback url in here
      );
      final _res = await _eSewaPnp.initPayment(payment: _payment);
      print(_res);
    } catch (error) {
      print("Error occurred");
    }
  }
}
