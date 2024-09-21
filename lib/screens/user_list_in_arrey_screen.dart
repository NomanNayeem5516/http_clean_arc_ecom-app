import 'package:clean_arc_http_ecom_app/screens/user_list_in_object_screen.dart';
import 'package:flutter/material.dart';

class UserListInArreyScreen extends StatefulWidget {
  const UserListInArreyScreen({super.key});

  @override
  State<UserListInArreyScreen> createState() => _UserListInArreyScreenState();
}

class _UserListInArreyScreenState extends State<UserListInArreyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserListInObjectScreen()));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('UserListInArreyScreen'),
      ),

    );
  }
}
