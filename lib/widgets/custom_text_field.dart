import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({this.onChanged,this.hintText, this.controller});
String ?hintText;
   final TextEditingController? controller;
Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
onChanged:onChanged ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white) ,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),
        ),

      ),
    );
  }
}

