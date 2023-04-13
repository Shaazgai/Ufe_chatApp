import 'dart:convert';

import 'package:ufu_chat_app/model/message.dart';
import 'package:ufu_chat_app/model/group_model.dart';
import 'package:http/http.dart' as http;

const String BASE_URL = "https://chatufe-production.up.railway.app/";

class BaseClient {
  var client = http.Client();
  Future<List<Message>> getMessage(String api) async {
    var url = Uri.parse(BASE_URL + api);
    var response = await client.get(url);

    return (jsonDecode(response.body) as List)
        .map((e) => Message.fromJson(e))
        .toList();
  }

  Future<Message> postMessage(String api, Map<String, dynamic> body) async {
    try {
      var url = Uri.parse(BASE_URL + api);

      var response = await http.post(url, body: body);
      print(response.body);
      return Message.fromJson(jsonDecode(response.body));
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<GroupModel>> get(String api) async {
    try {
      var url = Uri.parse(BASE_URL + api);

      var response = await http.get(url);

      return (jsonDecode(response.body) as List)
          .map((e) => GroupModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<GroupModel> post(String api, Map<String, dynamic> body) async {
    try {
      var url = Uri.parse(BASE_URL + api);

      var response = await http.post(url, body: body);

      return GroupModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
