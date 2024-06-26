import 'package:super_store_e_commerce_flutter/imports.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextBuilder(
            text: 'RANDOM ',
            color: Color.fromARGB(255, 165, 135, 179),
            fontSize: 30,
            fontWeight: FontWeight.w700),
        TextBuilder(
            text: 'SHOP', color: Color.fromRGBO(48, 72, 42, 1), fontSize: 30),
      ],
    );
  }
}
