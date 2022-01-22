import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'textfield_state.dart';

class TextfieldCubit extends Cubit<TextfieldState> {
  TextfieldCubit() : super(TextfieldInitial());
  emitlash(){
    emit(state);
  }
}
