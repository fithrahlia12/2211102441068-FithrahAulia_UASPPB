import 'package:super_store_e_commerce_flutter/imports.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  const CustomTextField(
      {Key? key,
      required this.labelText,
      this.hintText,
      this.controller,
      this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      style: GoogleFonts.poppins(color: Color.fromARGB(255, 9, 9, 9)),
      decoration: InputDecoration(
        prefixIcon:
            Icon(prefixIcon, size: 20, color: Color.fromARGB(255, 9, 9, 9)),
        labelText: labelText,
        hintText: hintText,
        border: _border(),
      ),
    );
  }

  InputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color.fromARGB(255, 165, 135, 179)),
    );
  }
}
