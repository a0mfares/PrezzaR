import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';
import '../bloc/car_bloc.dart';

class CarCheckoutWidget extends StatefulWidget {
  const CarCheckoutWidget({
    super.key,
    required this.selectedCar,
    required this.onChanged,
  });

  final String selectedCar;
  final Function(String?) onChanged;

  @override
  State<CarCheckoutWidget> createState() => _CarCheckoutWidgetState();
}

class _CarCheckoutWidgetState extends State<CarCheckoutWidget> {
  late final CarBloc bloc;

  @override
  void initState() {
    bloc = CarBloc.get(context);
    bloc.add(const CarEvent.getCars());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarBloc, CarState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => defLoadingCenter,
          carsLoaded: () {
            return Column(
              children: [
                Column(
                  children: bloc.cars
                      .map(
                        (e) => CheckboxListTile(
                          value: widget.selectedCar == e.uuid,
                          title: Text(e.brand, style: tstyle.bodyLarge),
                          subtitle: Text('${e.model}, ${e.car_plat_number}'),
                          activeColor: primary,
                          onChanged: (val) {
                            if (val == true) {
                              widget.onChanged(e.uuid);
                            } else {
                              widget.onChanged(null);
                            }
                          },
                        ),
                      )
                      .toList(),
                ),
                ListTile(
                  onTap: () {
                    appRoute.navigate(AddCarsRoute());
                  },
                  leading: CircleAvatar(
                    backgroundColor: lightCream,
                    child: Icon(
                      Icons.add,
                      color: primary,
                    ),
                  ),
                  title: Text(tr.addNewCar),
                ),
              ],
            );
          },
          orElse: () => ListView.builder(
            itemCount: bloc.cars.length + 1,
            itemBuilder: (context, index) {
              if (index == bloc.cars.length) {
                return ListTile(
                  onTap: () {
                    appRoute.navigate(AddCarsRoute());
                  },
                  leading: CircleAvatar(
                    backgroundColor: lightCream,
                    child: Icon(
                      Icons.add,
                      color: primary,
                    ),
                  ),
                  title: Text(tr.addNewCar),
                );
              }
              final car = bloc.cars[index];
              return CheckboxListTile(
                value: widget.selectedCar == car.uuid,
                title: Text(car.brand, style: tstyle.bodyLarge),
                subtitle: Text('${car.model}, ${car.car_plat_number}'),
                activeColor: primary,
                onChanged: (val) {
                  if (val == true) {
                    widget.onChanged(car.uuid);
                  } else {
                    widget.onChanged(null);
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}
