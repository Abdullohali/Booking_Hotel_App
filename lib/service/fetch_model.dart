import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/network.dart';
import 'package:bookinghotelapp/models/hote_model.dart';
import 'package:dio/dio.dart';

class HotelService {
  Future<List<Hotel>> getHotel() async {
    Response res = await Dio().get(idAdress);
    debugPrint(res.data.toString());
    return (res.data as List).map((e) => Hotel.fromJson(e)).toList();
  }
}
