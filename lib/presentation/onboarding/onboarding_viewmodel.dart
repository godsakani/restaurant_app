import 'dart:async';

import '../../domain/onboard.dart';
import '../base/baseview_model.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs, OnBoardingViewModelOutputs{
  //Stream Controller to enable communication
  final StreamController _streamController = StreamController<SliderViewObject>();
  // inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void starts() {
    // TODO: implement starts
  }
  
  @override
  void goNext() {
    // TODO: implement goNext
  }
  
  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }
  
  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }
  
  @override
 
  Sink get inputSliderViewObject => _streamController.sink;
  
  @override
  
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject) ; 

}


// inputs mean the orders that view model will get from view
abstract class OnBoardingViewModelInputs{
  void goNext(); // when users click on right arrow
  void goPrevious(); // when users click on left arrow
  void onPageChanged(int index);


  Sink get inputSliderViewObject; // Adding data to the stream... stream input
}

// outputs mean the data that wil be sent from view model to view
abstract class OnBoardingViewModelOutputs{

  Stream<SliderViewObject> get outputSliderViewObject;
}


class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlide;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.currentIndex, this.numOfSlide);
}