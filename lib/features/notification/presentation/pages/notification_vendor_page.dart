import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/notification/presentation/bloc/notify_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../../config/custom_colors.dart';

@RoutePage()
class NotificationVendorPage extends StatefulWidget {
  const NotificationVendorPage({super.key});

  @override
  State<NotificationVendorPage> createState() => _NotificationVendorPageState();
}

class _NotificationVendorPageState extends State<NotificationVendorPage> {
  late final NotifyBloc bloc;

  @override
  void initState() {
    bloc = NotifyBloc.get(context);
    bloc.add(const NotifyEvent.getAllNotifications('orders'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.notifications),
      ).prezzaLeading(canBack: false),
      body: Column(
        children: [
          const Divider(),
          Expanded(
            child: BlocBuilder<NotifyBloc, NotifyState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => defLoadingCenter,
                  orElse: () {
                    if (bloc.notifications.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.assetsImagesEmptyNotification,
                          ),
                          vSpace(1),
                          Text(
                            tr.caughtUp,
                            style: tstyle.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          vSpace(1),
                          Text(
                            tr.noNotifications,
                            style: tstyle.bodyLarge,
                          )
                        ],
                      );
                    }
                    return ListView.builder(
                      itemCount: bloc.notifications.length,
                      itemBuilder: (context, index) {
                        final notify = bloc.notifications[index];
                        return Column(
                          children: [
                            ListTile(
                              onTap: () {
                                if (!notify.is_read) {
                                  bloc.add(NotifyEvent.markNotifyRead(
                                      notify.id.toString()));
                                  bloc.add(
                                      const NotifyEvent.getAllNotifications(
                                          'orders'));
                                }
                              },
                              leading: CachedImage(
                                imageUrl: notify.profile_picture_url.replaceAll(
                                  'https://backend.prezzaapp.com',
                                  '',
                                ),
                              ),
                              title: Text(notify.message),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    notify.user_name,
                                    style: tstyle.bodyMedium,
                                  ),
                                  Text(timeago.format(
                                      DateTime.parse(notify.created_at))),
                                ],
                              ),
                              trailing: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(Assets.assetsImagesIconTest),
                                  Visibility(
                                    visible: !notify.is_read,
                                    child: CircleAvatar(
                                      backgroundColor: primary,
                                      radius: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
