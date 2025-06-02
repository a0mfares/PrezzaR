import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/cars/domain/entities/car_entity.dart';
import 'package:prezza/features/cars/domain/usecases/car_usecase.dart';

part 'car_event.dart';
part 'car_state.dart';
part 'car_bloc.freezed.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  static CarBloc get(context) => BlocProvider.of(context);
  final GetCarsUsecase _getCarsUsecase;
  final AddCarUsecase _addCarUsecase;
  final DeleteCarUsecase _deleteCarUsecase;
  final UpdateCarUsecase _updateCarUsecase;
  final GetTypesUsecase _getTypesUsecase;
  final GetMakesUsecase _getMakesUsecase;
  final GetModelsUsecase _getModelsUsecase;

  TextEditingController vehicleColor = TextEditingController();
  TextEditingController platNumber = TextEditingController();
  File carImg = File('');
  String selectedVehicleType = '';
  List<CarEntity> cars = [];
  CarEntity selectedCar = CarEntity(
      uuid: '',
      brand: '',
      model: '',
      car_image: '',
      car_type: '',
      color: '',
      car_plat_number: '');
  List<String> makes = [];
  List<String> models = [];
  List<String> types = [];
  String selectedMake = '';
  String selectedModel = '';
  String selectedType = '';
  CarBloc(
      this._getCarsUsecase,
      this._addCarUsecase,
      this._deleteCarUsecase,
      this._updateCarUsecase,
      this._getMakesUsecase,
      this._getModelsUsecase,
      this._getTypesUsecase)
      : super(const _Initial()) {
    on<CarEvent>((event, emit) async {
      await event.maybeWhen(
        intializeEditMode: () {
          emit(const CarState.updateUi());
          selectedMake = selectedCar.brand;
          selectedModel = selectedCar.model;
          selectedType = selectedCar.car_type;
          platNumber = TextEditingController(text: selectedCar.car_plat_number);
          vehicleColor = TextEditingController(text: selectedCar.color);
          add(const CarEvent.searshMakes());
        },
        selectMake: (make) {
          emit(const CarState.updateUi());
          selectedMake = make;
          add(const CarEvent.searshModel());
        },
        selectModel: (model) {
          emit(const CarState.updateUi());
          selectedModel = model;
          add(const CarEvent.searshTypes());
        },
        selectType: (type) {
          emit(const CarState.updateUi());
          selectedType = type;
        },
        pickImage: (img) async {
          emit(const CarState.updateUi());
          carImg = img;
          emit(const CarState.success());
        },
        searshTypes: () async {
          emit(const CarState.loading());
          try {
            final result = await _getTypesUsecase(parm: {
              'year': 2015,
              'make': selectedMake,
              'model': selectedModel,
            });
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                types = res;
                emit(const CarState.success());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        searshMakes: () async {
          emit(const CarState.loading());
          try {
            final result = await _getMakesUsecase();
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                makes = res;
                emit(const CarState.success());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        searshModel: () async {
          emit(const CarState.loading());
          try {
            final result = await _getModelsUsecase(parm: {
              'year': 2015,
              'make': selectedMake,
            });
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                models = res;
                emit(const CarState.success());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        updateCar: () async {
          emit(const CarState.loading());
          try {
            late MultipartFile carm;
            if (carImg.path.isNotEmpty) {
              final Completer<MultipartFile> image = Completer();

              await MultipartFile.fromFile(carImg.path).then((v) {
                image.complete(v);
              });
              carm = await image.future;
            }
            final result = await _updateCarUsecase(parm: {
              'uuid': selectedCar.uuid,
              'brand': selectedMake,
              'model': selectedModel,
              'car_type': selectedType,
              'color': vehicleColor.text,
              'car_image': [carm],
              'car_plat_number': platNumber.text,
            });
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                emit(const CarState.successUpdated());
                add(const CarEvent.getCars());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        deleteCar: (uuid) async {
          emit(const CarState.loading());
          try {
            final result = await _deleteCarUsecase(parm: {
              'uuid': uuid,
            });
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                emit(const CarState.successDelete());
                add(const CarEvent.getCars());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        getCars: () async {
          emit(const CarState.loading());
          try {
            final result = await _getCarsUsecase();
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                cars = res;
                emit(const CarState.success());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        addCar: () async {
          emit(const CarState.loading());
          try {
            final Completer<MultipartFile> image = Completer();

            await MultipartFile.fromFile(carImg.path).then((v) {
              image.complete(v);
            });
            final carm = await image.future;
            final result = await _addCarUsecase(parm: {
              'brand': selectedMake,
              'model': selectedModel,
              'car_type': selectedType,
              'car_image': [carm],
              'color': vehicleColor.text,
              'car_plat_number': platNumber.text,
            });
            result.fold(
              (err) {
                emit(CarState.failure(err.getMsg));
              },
              (res) {
                emit(const CarState.successAdded());
                add(const CarEvent.getCars());
              },
            );
          } catch (e) {
            emit(CarState.failure(e.toString()));
          }
        },
        orElse: () {},
      );
    });
  }
}
