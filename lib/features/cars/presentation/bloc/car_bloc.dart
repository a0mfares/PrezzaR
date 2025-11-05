// lib/features/cars/presentation/bloc/car_bloc.dart

import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/core/helper/tools.dart';
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

  // Controllers
  final vehicleColorController = TextEditingController();
  final platNumberController = TextEditingController();

  // State variables - all are non-nullable with default values
  File? carImg;
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
    this._getTypesUsecase,
  ) : super(const CarState.initial()) {
    on<CarEvent>(_onEventHandler);
  }

  Future<void> _onEventHandler(CarEvent event, Emitter<CarState> emit) async {
    await event.map(
      intializeEditMode: (_) {
        // Safely initialize with null-aware operators
        selectedMake = selectedCar.brand;
        selectedModel = selectedCar.model;
        selectedType = selectedCar.car_type;
        platNumberController.text = selectedCar.car_plat_number;
        vehicleColorController.text = selectedCar.color;
        add(const CarEvent.searshMakes());
      },
      selectMake: (value) {
        if (value.make.isNotEmpty) {
          selectedMake = value.make;
          selectedModel = ''; // Reset model when make changes
          selectedType = '';  // Reset type when make changes
          add(const CarEvent.searshModel());
        }
      },
      selectModel: (value) {
        if (value.model.isNotEmpty) {
          selectedModel = value.model;
          selectedType = ''; // Reset type when model changes
          add(const CarEvent.searshTypes());
        }
      },
      selectType: (value) {
        if (value.type.isNotEmpty) {
          selectedType = value.type;
        }
      },
      pickImage: (value) {
        carImg = value.img;
        emit(const CarState.imagePicked());
      },
      searshTypes: (_) async {
        emit(const CarState.loading());
        final result = await _getTypesUsecase(parm: {
          'year': 2015,
          'make': selectedMake,
          'model': selectedModel,
        });
        result.fold(
          (err) => emit(CarState.failure(err.getMsg)),
          (res) {
            // Safely filter and convert to non-nullable strings
            types = res
                .where((item) =>  item.toString().isNotEmpty)
                .map((item) => item.toString())
                .toList();
            emit(const CarState.typesLoaded());
          },
        );
      },
      searshMakes: (_) async {
        emit(const CarState.loading());
        final result = await _getMakesUsecase();
        result.fold(
          (err) => emit(CarState.failure(err.getMsg)),
          (res) {
            makes = res
                .where((item) =>  item.toString().isNotEmpty)
                .map((item) => item.toString())
                .toList();
            emit(const CarState.makesLoaded());
          },
        );
      },
      searshModel: (_) async {
        emit(const CarState.loading());
        final result = await _getModelsUsecase(parm: {
          'year': 2015,
          'make': selectedMake,
        });
        result.fold(
          (err) => emit(CarState.failure(err.getMsg)),
          (res) {
            // Safely filter and convert to non-nullable strings
            models = res
                .where((item) =>  item.toString().isNotEmpty)
                .map((item) => item.toString())
                .toList();
            emit(const CarState.modelsLoaded());
          },
        );
      },
      updateCar: (_) async {
        if (!_validate(emit)) return;
        emit(const CarState.loading());
        try {
          MultipartFile? carm;
          if (carImg != null) {
            carm = await MultipartFile.fromFile(carImg!.path);
          }

          final result = await _updateCarUsecase(parm: {
            'uuid': selectedCar.uuid,
            'brand': selectedMake,
            'model': selectedModel,
            'car_type': selectedType,
            'color': vehicleColorController.text,
            if (carm != null) 'car_image': [carm],
            'car_plat_number': platNumberController.text,
          });
          result.fold(
            (err) => emit(CarState.failure(err.getMsg)),
            (res) => emit(const CarState.successUpdated()),
          );
        } catch (e) {
          emit(CarState.failure(e.toString()));
        }
      },
      deleteCar: (value) async {
        emit(const CarState.loading());
        final result = await _deleteCarUsecase(parm: {'uuid': value.uuid});
        result.fold(
          (err) => emit(CarState.failure(err.getMsg)),
          (res) => emit(const CarState.successDelete()),
        );
      },
      getCars: (_) async {
        emit(const CarState.loading());
        final result = await _getCarsUsecase();
        result.fold(
          (err) => emit(CarState.failure(err.getMsg)),
          (res) {
            cars = res;
            emit(const CarState.carsLoaded());
          },
        );
      },
      addCar: (_) async {
        if (!_validate(emit)) return;
        emit(const CarState.loading());
        try {
          final carm = await MultipartFile.fromFile(carImg!.path);
          final result = await _addCarUsecase(parm: {
            'brand': selectedMake,
            'model': selectedModel,
            'car_type': selectedType,
            'car_image': [carm],
            'color': vehicleColorController.text,
            'car_plat_number': platNumberController.text,
          });
          result.fold(
            (err) => emit(CarState.failure(err.getMsg)),
            (res) => emit(const CarState.successAdded()),
          );
        } catch (e) {
          emit(CarState.failure(e.toString()));
        }
      },
    );
  }

  /// Validates the form before submission.
  bool _validate(Emitter<CarState> emit) {
    if (selectedMake.isEmpty ||
        selectedModel.isEmpty ||
        selectedType.isEmpty ||
        vehicleColorController.text.isEmpty ||
        platNumberController.text.isEmpty ||
        carImg == null) {
      emit(CarState.failure(tr.fillAllCarFields));
      return false;
    }
    return true;
  }
}