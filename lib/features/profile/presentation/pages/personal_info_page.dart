import 'dart:async';

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
  Timer? _timeoutTimer;

  @override
  void initState() {
    bloc = ProfileBloc.get(context);
    super.initState();
  }

  @override
  void dispose() {
    _timeoutTimer?.cancel();
    super.dispose();
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
              BotToast.showText(text: v.message);
              _timeoutTimer?.cancel();
            },
            failure: (v) {
              BotToast.showText(text: v.error);
              _timeoutTimer?.cancel();
              // Reset the editing state on failure
              if (v.rollbackData != null) {
                // The bloc already handled rollback, just need to refresh UI
                setState(() {});
              }
            },
            loadingField: (field) {
              // Start a timeout timer to prevent infinite loading
              _timeoutTimer?.cancel();
              _timeoutTimer = Timer(const Duration(seconds: 30), () {
                // Check if we're still in loading state after timeout
                final currentState = bloc.state;
                if (currentState.maybeWhen(
                  loadingField: (field) => true,
                  orElse: () => false,
                )) {
                  // Force a failure state if still loading
                  bloc.add(const ProfileEvent.resetState());
                  BotToast.showText(text: 'Request timed out. Please try again.');
                }
              });
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
                // Wrap the entire card in BlocBuilder to rebuild on state changes
                BlocBuilder<ProfileBloc, ProfileState>(
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
                          _buildEditableField(
                            controller: bloc.firstName,
                            label: tr.firstName,
                            isEditing: !bloc.fName,
                            fieldType: 'fname',
                            validator: (v) {
                              if (v!.isEmpty) return tr.plsEnterFName;
                              return null;
                            },
                            state: state,
                            isLoading: state.maybeWhen(
                              loadingField: (field) => field == 'firstName',
                              orElse: () => false,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(thickness: 2),
                          ),
                          _buildEditableField(
                            controller: bloc.lastName,
                            label: tr.lastName,
                            isEditing: !bloc.lName,
                            fieldType: 'lname',
                            validator: (v) {
                              if (v!.isEmpty) return tr.plsEnterLName;
                              return null;
                            },
                            state: state,
                            isLoading: state.maybeWhen(
                              loadingField: (field) => field == 'lastName',
                              orElse: () => false,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(thickness: 2),
                          ),
                          _buildEditableField(
                            controller: bloc.userName,
                            label: tr.username,
                            isEditing: !bloc.username,
                            fieldType: 'username',
                            validator: (v) {
                              if (v!.isEmpty) return tr.username;
                              return null;
                            },
                            state: state,
                            isLoading: state.maybeWhen(
                              loadingField: (field) => field == 'username',
                              orElse: () => false,
                            ),
                          ),
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
                        trailing: GestureDetector(
                            onTap: () {
                              bloc.enableEdit("Phone");
                            },
                            child: const Icon(Icons.arrow_forward_ios)),
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
                        trailing: GestureDetector(
                            onTap: () {
                              bloc.enableEdit("Email");
                            },
                            child: const Icon(Icons.arrow_forward_ios)),
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

  Widget _buildEditableField({
    required TextEditingController controller,
    required String label,
    required bool isEditing,
    required String fieldType,
    required String? Function(String?) validator,
    required ProfileState state,
    required bool isLoading,
  }) {
    return ListTile(
      title: SizedBox(
        width: 20.w,
        child: TextFormField(
          readOnly: !isEditing,
          validator: validator,
          onChanged: (v) {
            bloc.personalInfoForm.currentState!.validate();
          },
          controller: controller,
          decoration: InputDecoration(
            fillColor: lightCream,
            labelText: label,
          ),
        ),
      ),
      trailing: InkWell(
        onTap: isLoading
            ? null
            : () {
                if (!isEditing) {
                  // Enable editing mode
                  bloc.add(ProfileEvent.changeStatus(fieldType));
                } else {
                  // Save the changes
                  updateUserBtm(context);
                }
              },
        child: isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(primary),
                ),
              )
            : isEditing
                ? Text(tr.save, style: redText)
                : SvgPicture.asset(
                    Assets.assetsImagesEdit,
                    colorFilter: ColorFilter.mode(primary, BlendMode.srcIn),
                  ),
      ),
    ).prezza(padding: EdgeInsets.zero);
  }

  Future<dynamic> updateUserBtm(BuildContext context) {
    return showPrezzaBtm(
      context,
      Column(
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
            obscureText: true,
            decoration: InputDecoration(
              hintText: tr.password,
            ),
          ),
          vSpace(2),
          ElevatedButton(
            onPressed: () {
              if (bloc.personalInfoForm.currentState!.validate()) {
                context.maybePop();
                bloc.add(const ProfileEvent.updateUserInfo());
              }
            },
            child: Text(tr.confirm),
          ),
          vSpace(10),
        ],
      ),
      true,
    );
  }
}