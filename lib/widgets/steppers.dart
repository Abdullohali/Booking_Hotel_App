import 'package:bookinghotelapp/components/types.dart';
import 'package:bookinghotelapp/widgets/icon_stepper.dart';
import 'package:im_stepper/stepper.dart';
import '../components/import_package.dart';

class steppers {
  static IconStepper iconstepper() {
    return IconStepper(
      enableNextPreviousButtons: false,
      lineLength: 20,
      activeStepColor: constColor.kgrey,
      activeStepBorderColor: constColor.kOffWhite,
      stepColor: constColor.kgrey,
      lineColor: constColor.kGreyDark,
      // scrollingDisabled: false,
      // enableStepTapping: false,
      enableStepTapping: false,
      lineDotRadius: 0.6,
      icons: stepper.iconlist(Types.activeStep),
      activeStep: Types.activeStep,
    );
  }
}
