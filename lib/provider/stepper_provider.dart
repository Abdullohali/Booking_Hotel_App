import 'package:bookinghotelapp/components/types.dart';
import 'package:flutter/material.dart';

class StepperProvider extends ChangeNotifier {
  incrementStep(index) {
    Types.activeStep = index;
    notifyListeners();
  }
}
