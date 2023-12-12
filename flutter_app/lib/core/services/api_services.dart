import 'package:dio/dio.dart';
import 'package:flutter_app/core/constant/app_constant.dart';
import 'package:flutter_app/core/functions/internet_connectivity_check.dart';

class ApiServices {
  final Dio dio = Dio();
  Future<Map<String, dynamic>> createData(var data) async {
    try {
      await checkInternetConnection();
      final response = await dio.post("${AppConstant.apiBaseUrl}", data: data);
      return response.data;
    } catch (error) {
      rethrow;
    }
  }
  Future<Map<String, dynamic>> readData() async {
    try {
      await checkInternetConnection();
      final response = await dio.get("${AppConstant.apiBaseUrl}");
      return response.data;
    } catch (error) {
      rethrow;
    }
  }
  Future<Map<String, dynamic>> updateData(var data) async {
    try {
      await checkInternetConnection();
      final response = await dio.post("${AppConstant.apiBaseUrl}", data: data);
      return response.data;
    } catch (error) {
      rethrow;
    }
  }
}
