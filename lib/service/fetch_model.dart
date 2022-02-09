import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/models/hote_model.dart';
import 'package:dio/dio.dart';

class HotelService {
  Future<List<HotelModel>> getHotel() async {
    Response res = await Dio().get("https://jsonplaceholder.typicode.com/users");
    debugPrint(res.data.toString());
    return (res.data as List).map((e) => HotelModel.fromJson(e)).toList();
  }
}
