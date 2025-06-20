import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,  this.onPressed,});
  final String text;
   final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.black)),
    );
  }
}
