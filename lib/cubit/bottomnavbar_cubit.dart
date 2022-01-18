import 'package:bloc/bloc.dart';
import 'package:bookinghotelapp/screen/deals/deals_page.dart';
import 'package:bookinghotelapp/screen/homepage/home_one_page.dart';
import 'package:bookinghotelapp/screen/hotellist/hotel_list_page.dart';
import 'package:bookinghotelapp/screen/user/user_page.dart';
import 'package:meta/meta.dart';

part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  int pageindex = 0;

  BottomnavbarCubit() : super(BottomnavbarInitial());

  List pages = const [
    HomeOne(),
    HotelList(),
    DealsPage(),
    Userpage(),
  ];

  changePage(int tapedIndex) {
    pageindex = tapedIndex;
    emit(BottomnavbarInitial());
  }
}
