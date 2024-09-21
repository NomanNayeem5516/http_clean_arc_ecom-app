

import '../models/user_list_in_array.dart';
import '../models/user_list_in_object.dart';
import 'http_helper.dart';

class RestClient{


  static final HttpHelper _httpHelper=HttpHelper();

  static Future<UserListInObjectModel> getUserListInObject()async{
    Map<String, dynamic> response=await _httpHelper.get(url: "https://reqres.in/api/users?page=2");
    return UserListInObjectModel.fromJson(response);
  }

}