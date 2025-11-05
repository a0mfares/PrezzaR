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
      body: BlocConsumer<NewsfeedBloc, NewsfeedState>(
        listener: (context, state) {
          state.maybeWhen(
            successFollow: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(tr.follow),
                  backgroundColor: Colors.green,
                ),
              );
            },
            failureFollow: (err) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err),
                  backgroundColor: Colors.red,
                ),
              );
            },
            failureUsers: (err) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loadingUsers: () {
              return const LoadingUsersWidget();
            },
            failureUsers: (err) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 60, color: Colors.red),
                    vSpace(2),
                    Text(err),
                    vSpace(2),
                    ElevatedButton(
                      onPressed: () {
                        bloc.add(const NewsfeedEvent.getUsers());
                      },
                      child: Text(tr.clickAgain),
                    ),
                  ],
                ),
              );
            },
            successUsers: () {
              if (bloc.users.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.people_outline, size: 60),
                      vSpace(2),
                      Text(tr.noUsersFound),
                    ],
                  ),
                );
              }
              
              return ListView.builder(
                itemCount: bloc.users.length,
                itemBuilder: (context, index) {
                  final user = bloc.users[index];
                  return ListTile(
                    onTap: () {
                      appRoute.navigate(ProfileSocialRoute(userId: user.uuid));
                    },
                    leading: const CircleAvatar(
                      child: Icon(Icons.person)
                          ,
                    ),
                    title: Text(user.username),
                    trailing: SizedBox(
                      width: 80,
                      height: 40,
                      child: BlocBuilder<NewsfeedBloc, NewsfeedState>(
                        builder: (context, state) {
                          final isLoading = state.maybeWhen(
                            loadingFollow: () => true,
                            orElse: () => false,
                          );
                          
                          return ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () {
                                    bloc.add(NewsfeedEvent.follow(user.uuid));
                                  },
                            child: isLoading
                                ? const SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(tr.follow),
                          );
                        },
                      ),
                    ),
                  );
                },
              );
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
                    leading: const CircleAvatar(
                      
                      child:Icon(Icons.person)
                    ),
                    title: Text(user.username),
                    trailing: SizedBox(
                      width: 80,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          bloc.add(NewsfeedEvent.follow(user.uuid));
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