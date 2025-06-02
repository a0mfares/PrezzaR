import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/core/shared/widgets/under_montains.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/constants/assets.dart';
import '../../../../core/helper/widgets.dart';
import '../../../../prezza_page.dart';
import '../bloc/car_bloc.dart';

@RoutePage()
class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {
  late final CarBloc bloc;

  @override
  void initState() {
    bloc = CarBloc.get(context);
    bloc.add(const CarEvent.getCars());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.yourCars),
      ).prezzaLeading(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: BlocConsumer<CarBloc, CarState>(
          listener: (context, state) {
            state.maybeMap(
              successDelete: (v) {
                BotToast.showText(text: 'Car deleted success');
              },
              failure: (v) {
                BotToast.showText(text: v.err);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => defLoadingCenter,
              success: () {
                return ListView.builder(
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
                    return SizedBox(
                      width: 100.w,
                      height: 20.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CachedImage(
                            imageUrl: car.car_image,
                            radius: BorderRadius.circular(360),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(car.brand, style: tstyle.headlineSmall),
                              vSpace(0.5),
                              Text('${car.model}, ${car.car_plat_number}'),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  bloc.selectedCar = car;
                                  appRoute
                                      .navigate(AddCarsRoute(editMode: true));
                                },
                                child: CircleAvatar(
                                  backgroundColor: primary,
                                  child:
                                      SvgPicture.asset(Assets.assetsImagesEdit),
                                ),
                              ),
                              hSpace(3),
                              InkWell(
                                onTap: () {
                                  showDialogPrezza(
                                    context: context,
                                    title: tr.deleteCar,
                                    subTitle: tr.areUSureDeleteCar,
                                    onTap: () {
                                      bloc.add(CarEvent.deleteCar(car.uuid));
                                      context.maybePop();
                                    },
                                  );
                                },
                                child: CircleAvatar(
                                  backgroundColor: lightCream,
                                  child: SvgPicture.asset(
                                      Assets.assetsImagesTrash),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              orElse: () => const UnderMontains(),
            );
          },
        ),
      ),
    );
  }
}
