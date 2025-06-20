

import 'package:chatapp/helper/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
List data = [];
late final ModelUser modelUser;
class DatabaseHelper {
  //إضافة بيانات إلى الجدول:
  insert( modelUser, { required String email, required String age, required String name, required String password,required String id}) async {
    try {
      final response = await Supabase.instance.client.from('item').insert({
        "id": modelUser.id,
        "email": modelUser.email,
        "age": modelUser.age,
        "name": modelUser.name,
        "password": modelUser.pass,
      });

      if (response.error == null) {
        print('Task added successfully!');

        // getdata();
      } else {
        print('Error: ${response.error!.message}');
      }
    } catch (e) {
      print("Unexpected error: $e");
    }
  }


  Future<void> getdata() async {
    try {
      final response =
      await Supabase.instance.client.from('item').select('email,name');

      if (response.isNotEmpty) {
        setState(() {
          data = response;
        });
        print("Data fetched successfully!");
        print(data);
      } else {
        print("No data found.");
      }
    } catch (error) {
      print("Error fetching data: $error");
    }
  }

  void setState(Null Function() param0) {
  }
}

