part of 'car_bloc.dart';

@freezed
class CarState with _$CarState {
  // The initial state of the BLoC
  const factory CarState.initial() = _Initial;

  // State indicating an asynchronous operation is in progress
  const factory CarState.loading() = _Loading;

  // --- Data Fetching States ---

  // State indicating the list of car makes has been successfully fetched
  const factory CarState.makesLoaded() = _MakesLoaded;

  // State indicating the list of car models has been successfully fetched
  const factory CarState.modelsLoaded() = _ModelsLoaded;

  // State indicating the list of car types has been successfully fetched
  const factory CarState.typesLoaded() = _TypesLoaded;

  // State indicating the user's list of cars has been successfully fetched
  const factory CarState.carsLoaded() = _CarsLoaded;

  // --- Action Result States ---

  // State indicating a car was successfully added
  const factory CarState.successAdded() = _SuccessAdded;

  // State indicating a car was successfully updated
  const factory CarState.successUpdated() = _SuccessUpdated;

  // State indicating a car was successfully deleted
  const factory CarState.successDelete() = _SuccessDelete;

  // State indicating an image has been picked by the user
  const factory CarState.imagePicked() = _ImagePicked;

  // --- Error States ---


  // State indicating an error occurred during an operation
  const factory CarState.failure(String error) = _Failure;
}