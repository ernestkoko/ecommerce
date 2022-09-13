import 'dart:convert';

import 'package:http/http.dart' as http;

import './user_provider_interface.dart';
import '../../../../core/utils/constants.dart';

class UserProviderServer extends UserProviderInterface {
  @override
  Future<dynamic> getUsers() async {
    try {
      final response = await http.get(Uri.parse("${api}users"));

      final body = json.decode(response.body.toString());

      return body;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> getTodo({required int id}) async {
    try {
      final response = await http.get(Uri.parse("${api}users/$id/todos"));

      final body = json.decode(response.body.toString());

      return body;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> getPosts({required int id}) async {
    try {
      final response = await http.get(Uri.parse("${api}users/$id/posts"));

      final body = json.decode(response.body.toString());

      return body;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> getPostComments({required int id}) async {
    try {
      final response = await http.get(Uri.parse("${api}posts/$id/comments"));

      final body = json.decode(response.body.toString());

      return body;
    } catch (error) {
      rethrow;
    }
  }
  @override
  Future<dynamic> getPost({required int id}) async {
    try {
      final response = await http.get(Uri.parse("${api}posts/$id"));

      final body = json.decode(response.body.toString());

      return body;
    } catch (error) {
      rethrow;
    }
  }
}
