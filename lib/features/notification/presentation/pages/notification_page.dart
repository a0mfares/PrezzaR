import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/shared/widgets/cached_image.dart';
import 'package:prezza/features/notification/presentation/bloc/notify_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  late final TabController _controller;
  late final NotifyBloc bloc;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    bloc = NotifyBloc.get(context);
    bloc.add(const NotifyEvent.getAllNotifications('news_feed'));
    
    // Add listener to tab controller
    _controller.addListener(() {
      if (!_controller.indexIsChanging) return;
      
      // Fetch notifications based on the selected tab
      if (_controller.index == 0) {
        bloc.add(const NotifyEvent.getAllNotifications('news_feed'));
      } else {
        bloc.add(const NotifyEvent.getAllNotifications('orders'));
      }
    });
    
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.notifications),
        backgroundColor: floralWhite,
        elevation: 1,
        bottom: TabBar(
          controller: _controller,
          unselectedLabelColor: primary,
          indicatorColor: primary,
          dividerColor: lightCream,
          labelColor: primary,
          labelStyle: tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.w900),
          unselectedLabelStyle:
              tstyle.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
          tabs: [
            Tab(text: tr.newsFeed),
            Tab(text: tr.orders),
          ],
        ),
      ).prezzaLeading(),
      body: TabBarView(
        controller: _controller,
        children: [
          _buildNotificationList('news_feed'),
          _buildNotificationList('order'),
        ],
      ),
    );
  }

  Widget _buildNotificationList(String type) {
    return Column(
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
                  return RefreshIndicator(
                    onRefresh: () async {
                      bloc.add(NotifyEvent.getAllNotifications(type));
                    },
                    child: ListView.builder(
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
                                  bloc.add(NotifyEvent.getAllNotifications(type));
                                }
                              },
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                child: notify.profile_picture_url.isNotEmpty
                                    ? CachedImage(
                                        imageUrl: notify.profile_picture_url
                                            .replaceAll(
                                                'https://backend.prezzaapp.com',
                                                ''),
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      )
                                    : Icon(
                                        Icons.person,
                                        color: Colors.grey[600],
                                      ),
                              ),
                              title: Text(
                                notify.message,
                                style: TextStyle(
                                  fontWeight: notify.is_read
                                      ? FontWeight.normal
                                      : FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    notify.user_name,
                                    style: tstyle.bodyMedium,
                                  ),
                                  vSpace(0.2),
                                  Text(
                                    timeago.format(
                                        DateTime.parse(notify.created_at)),
                                    style: tstyle.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _getNotificationIcon(String type) {
    switch (type) {
      case 'order':
        return Icon(Icons.shopping_bag, color: primary);
      case 'news_feed':
        return Icon(Icons.rss_feed, color: primary);
      default:
        return Icon(Icons.notifications, color: primary);
    }
  }
}