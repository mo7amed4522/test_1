// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Crud {
  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        if (kDebugMode) {
          print("Error ${response.statusCode}");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error Catch $e");
      }
    }
  }

  postRequest(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        if (kDebugMode) {
          print("Error ${response.statusCode}");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error Catch $e");
      }
    }
  }

  deleteRequesy(String url) async {
    try {
      var response = await http.delete(Uri.parse(url));
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        if (kDebugMode) {
          print("Error ${response.statusCode}");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error Catch $e");
      }
    }
  }
}
