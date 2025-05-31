import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/helper/widgets.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../bloc/profile_bloc.dart';

@RoutePage()
class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  late final ProfileBloc bloc;
  @override
  void initState() {
    bloc = ProfileBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.personalInfo),
      ).prezzaLeading(),
      body: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeMap(
            successUpdated: (v) {
              BotToast.showText(text: 'Profile Update Success');
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          child: Form(
            key: bloc.personalInfoForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                vSpace(3),
                BlocConsumer<ProfileBloc, ProfileState>(
                  listener: (context, state) {
                    state.maybeMap(
                      successUpdated: (_) {
                        bloc.add(const ProfileEvent.changeStatus('fname'));
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return Card(
                      color: lightCream,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          vSpace(2),
                          ListTile(
                            title: SizedBox(
                              width: 20.w,
                              child: TextFormField(
                                readOnly: bloc.fName,
                                validator: (v) {
                                  if (v!.isEmpty) {
                                    return tr.plsEnterFName;
                                  }
                                  return null;
                                },
                                onChanged: (v) {
                                  bloc.personalInfoForm.currentState!
                                      .validate();
                                },
                                controller: bloc.firstName,
                                decoration: InputDecoration(
                                  fillColor: lightCream,
                                  labelText: tr.firstName,
                                ),
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                if (bloc.fName) {
                                  bloc.add(
                                      const ProfileEvent.changeStatus('fname'));
                                } else {
                                  updateUserBtm(context);
                                }
                              },
                              child: state.maybeWhen(
                                loadingFName: () => defLoading,
                                orElse: () {
                                  if (!bloc.fName) {
                                    return Text(tr.save, style: redText);
                                  }
                                  return SvgPicture.asset(
                                    Assets.assetsImagesEdit,
                                    colorFilter: ColorFilter.mode(
                                        primary, BlendMode.srcIn),
                                  );
                                },
                              ),
                            ),
                          ).prezza(padding: EdgeInsets.zero),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(thickness: 2),
                          ),
                          ListTile(
                            title: SizedBox(
                              width: 20.w,
                              child: TextFormField(
                                readOnly: bloc.lName,
                                controller: bloc.lastName,
                                validator: (v) {
                                  if (v!.isEmpty) {
                                    return tr.plsEnterLName;
                                  }
                                  return null;
                                },
                                onChanged: (v) {
                                  bloc.personalInfoForm.currentState!
                                      .validate();
                                },
                                decoration: InputDecoration(
                                  fillColor: lightCream,
                                  labelText: tr.lastName,
                                ),
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                if (bloc.lName) {
                                  bloc.add(
                                      const ProfileEvent.changeStatus('lname'));
                                } else {
                                  updateUserBtm(context);
                                }
                              },
                              child: state.maybeWhen(
                                loadingLName: () => defLoading,
                                orElse: () {
                                  if (!bloc.lName) {
                                    return Text(
                                      tr.save,
                                      style: redText,
                                    );
                                  }
                                  return SvgPicture.asset(
                                    Assets.assetsImagesEdit,
                                    colorFilter: ColorFilter.mode(
                                        primary, BlendMode.srcIn),
                                  );
                                },
                              ),
                            ),
                          ).prezza(padding: EdgeInsets.zero),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(thickness: 2),
                          ),
                          ListTile(
                            title: SizedBox(
                              width: 20.w,
                              child: TextFormField(
                                readOnly: bloc.username,
                                validator: (v) {
                                  if (v!.isEmpty) {
                                    return tr.username;
                                  }
                                  return null;
                                },
                                onChanged: (v) {
                                  bloc.personalInfoForm.currentState!
                                      .validate();
                                },
                                controller: bloc.userName,
                                decoration: InputDecoration(
                                  fillColor: lightCream,
                                  labelText: tr.username,
                                ),
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                if (bloc.username) {
                                  bloc.add(const ProfileEvent.changeStatus(
                                      'username'));
                                } else {
                                  updateUserBtm(context);
                                }
                              },
                              child: state.maybeWhen(
                                loadingUserName: () => defLoading,
                                orElse: () {
                                  if (!bloc.username) {
                                    return Text(
                                      tr.save,
                                      style: redText,
                                    );
                                  }
                                  return SvgPicture.asset(
                                    Assets.assetsImagesEdit,
                                    colorFilter: ColorFilter.mode(
                                        primary, BlendMode.srcIn),
                                  );
                                },
                              ),
                            ),
                          ).prezza(padding: EdgeInsets.zero),
                        ],
                      ),
                    );
                  },
                ),
                vSpace(3),
                Card(
                  color: lightCream,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      vSpace(1),
                      ListTile(
                        title: SizedBox(
                          width: 20.w,
                          child: TextFormField(
                            readOnly: true,
                            controller:
                                TextEditingController(text: usr.user.phone),
                            decoration: InputDecoration(
                              fillColor: lightCream,
                              labelText: tr.phone,
                            ),
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ).prezza(padding: EdgeInsets.zero),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(thickness: 2),
                      ),
                      ListTile(
                        title: SizedBox(
                          width: 20.w,
                          child: TextFormField(
                            readOnly: true,
                            controller:
                                TextEditingController(text: usr.user.email),
                            decoration: InputDecoration(
                              fillColor: lightCream,
                              labelText: tr.email,
                            ),
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ).prezza(padding: EdgeInsets.zero),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(thickness: 2),
                      ),
                      ListTile(
                        title: SizedBox(
                          width: 20.w,
                          child: TextFormField(
                            readOnly: true,
                            controller:
                                TextEditingController(text: '***********'),
                            decoration: InputDecoration(
                              fillColor: lightCream,
                              labelText: tr.password,
                            ),
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            appRoute.navigate(const PassChangeRoute());
                          },
                          child: const Icon(Icons.arrow_forward_ios),
                        ),
                      ).prezza(padding: EdgeInsets.zero),
                    ],
                  ),
                ),
                vSpace(3),
                Visibility(
                  visible: isCustomer,
                  child: ListTile(
                    onTap: () {
                      appRoute
                          .navigate(LocationRoute(title: tr.deliveryAddresses));
                    },
                    title: Text(tr.deliveryAddresses.replaceAll('\n', ' ')),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ).prezza(),
                ),
                vSpace(3),
                Visibility(
                  visible: isCustomer,
                  child: ListTile(
                    onTap: () {
                      appRoute.navigate(const CarsRoute());
                    },
                    title: Text(tr.yourCars),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ).prezza(),
                ),
                vSpace(3),
                Visibility(
                  visible: isCustomer,
                  child: ListTile(
                    onTap: () {
                      appRoute
                          .navigate(PaymentCardRoute(title: tr.paymentMethods));
                    },
                    title: Text(tr.paymentMethods),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ).prezza(),
                ),
                vSpace(5),
              ],
            ).margin(margin: const EdgeInsets.symmetric(horizontal: 20)),
          ),
        ),
      ),
    );
  }

  Future<dynamic> updateUserBtm(BuildContext context) {
    return showPrezzaBtm(
      context,
      BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tr.passwordIsRequired,
                    style: tstyle.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 17.sp),
                  ),
                  vSpace(5),
                  TextFormField(
                    controller: bloc.password,
                    onChanged: (v) {
                      bloc.personalInfoForm.currentState!.validate();
                    },
                    validator: (v) {
                      if (v!.isEmpty) {
                        return tr.plsEnterPass;
                      }
                      if (!bloc.passwordRegex.hasMatch(v)) {
                        return tr.plsEnterValidPass;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: tr.password,
                    ),
                  ),
                  vSpace(2),
                  ElevatedButton(
                    onPressed: () {
                      context.maybePop();
                      bloc.add(const ProfileEvent.updateUserInfo());
                    },
                    child: Text(tr.confirm),
                  ),
                  vSpace(10),
                ],
              );
            },
          );
        },
      ),
      true,
    );
  }
}
