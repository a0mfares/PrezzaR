part of 'car_bloc.dart';

@freezed
class CarEvent with _$CarEvent {
  const factory CarEvent.addCar() = _AddCar;
  const factory CarEvent.deleteCar(String uuid) = _DeleteCar;
  const factory CarEvent.updateCar() = _UpdateCar;
  const factory CarEvent.searshModel() = _SearchModel;
  const factory CarEvent.searshMakes() = _searchMakes;
  const factory CarEvent.searshTypes() = _SearshTypes;
  const factory CarEvent.selectMake(String make) = _SelectMake;
  const factory CarEvent.selectModel(String model) = _SelectModel;
  const factory CarEvent.selectType(String type) = _SelectType;
  const factory CarEvent.pickImage(File img) = _PickImage;
  const factory CarEvent.intializeEditMode() = _IntializeEditMode;
  const factory CarEvent.getCars() = _GetCars;
}