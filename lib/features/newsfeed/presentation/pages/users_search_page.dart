import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:flutter/material.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/prezza_page.dart';

import '../widgets/loading_users_widget.dart';

@RoutePage()
class UsersSearchPage extends StatefulWidget {
  const UsersSearchPage({super.key});

  @override
  State<UsersSearchPage> createState() => _UsersSearchPageState();
}

class _UsersSearchPageState extends State<UsersSearchPage> {
  late final NewsfeedBloc bloc;

  @override
  void initState() {
    bloc = NewsfeedBloc.get(context);
    bloc.add(const NewsfeedEvent.getUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.users),
      ).prezzaLeading(),
      body: BlocBuilder<NewsfeedBloc, NewsfeedState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return const LoadingUsersWidget();
            },
            orElse: () {
              return ListView.builder(
                itemCount: bloc.users.length,
                itemBuilder: (context, index) {
                  final user = bloc.users[index];
                  return ListTile(
                    onTap: () {
                      appRoute.navigate(ProfileSocialRoute(userId: user.uuid));
                    },
                    title: Text(user.username),
                    trailing: SizedBox(
                      width: 80,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          bloc.add(NewsfeedEvent.follow(user.uuid));
                          bloc.add(const NewsfeedEvent.fetchPosts());
                        },
                        child: Text(tr.follow),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
