import 'package:dio/dio.dart';
import 'package:quick_note/views/bab7/model/user_model.dart';

class UserService {

  static final Dio _dio = Dio();
  static const _baseUrl = 'https://reqres.in/api';
  static const _users = 'users';

  static Future<List<UserModel>> fetchUser() async {
    try {
      final response = await _dio.get(
        '$_baseUrl/$_users', 
        queryParameters: {
          'page': '1',
          'per_page': '10'
        }
      );
      if(response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users = List.from(data.map((user) => 
          UserModel.fromJson(json: user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  static Future<UserModel> fetchDetailUser({required int id}) async {
    try {
      final response = await _dio.get('$_baseUrl/$_users/$id');
      if(response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        UserModel user = UserModel.fromJson(json: data);
        return user;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

}