abstract class BaseViewModel  extends BaseViewModelInputs with BaseViewModelOutputs{
  //shared variables and functions that will be used through any view model
}

abstract class BaseViewModelInputs{
void starts();// will be called while init of view model
void dispose();// will be called when viewModel dies
}

abstract class BaseViewModelOutputs{
  
}