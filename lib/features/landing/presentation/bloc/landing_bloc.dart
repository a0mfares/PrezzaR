import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/landing/domain/entities/appreview_entity.dart';
import 'package:prezza/features/landing/domain/entities/commonissue_entity.dart';
import 'package:prezza/features/landing/domain/entities/downloadplatforms_entity.dart';
import 'package:prezza/features/landing/domain/entities/faq_entity.dart';
import 'package:prezza/features/landing/domain/entities/socialplatforms_entity.dart';
import 'package:prezza/features/landing/domain/usecases/landing_usecase.dart';

part 'landing_event.dart';
part 'landing_state.dart';
part 'landing_bloc.freezed.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  final AddAppReviewUsecase _addAppReviewUsecase;
  final GetAppReviewUsecase _getAppReviewUsecase;
  final GetCommonIssuesUsecase _getCommonIssuesUsecase;
  final GetFAQUsecase _getFAQUsecase;
  final GetDownloadPlatformsUsecase _getDownloadPlatformsUsecase;
  final GetSocialPlatformsUsecase _getSocialPlatformsUsecase;
  final TextEditingController review = TextEditingController();
  num rate = 0;

  List<AppReviewEntity> appReviews = [];
  List<CommonIssueEntity> commonIssues = [];
  List<FaqEntity> faqs = [];
  List<DownloadPlatformsEntity> downloadPlatforms = [];
  List<SocialPlatformsEntity> socialPlatforms = [];
  double averageRate = 0;
  static LandingBloc get(context) => BlocProvider.of(context);
  LandingBloc(
      this._addAppReviewUsecase,
      this._getAppReviewUsecase,
      this._getCommonIssuesUsecase,
      this._getFAQUsecase,
      this._getDownloadPlatformsUsecase,
      this._getSocialPlatformsUsecase)
      : super(const _Initial()) {
    on<LandingEvent>((event, emit) async {
      await event.maybeWhen(
        addAppReview: () async {
          emit(const LandingState.loading());
          final result = await _addAppReviewUsecase(parm: {
            'review': review.text,
            'stars': rate,
          });
          result.fold(
            (err) {
              emit(LandingState.failure(err.getMsg));
            },
            (res) {
              add(const LandingEvent.getAppReviews());
            },
          );
        },
        changeRate: (v) {
          emit(const LandingState.updateUI());
          rate = v;
          emit(const LandingState.succesUI());
          emit(const LandingState.success());
        },
        getAppReviews: () async {
          emit(const LandingState.loading());
          final result = await _getAppReviewUsecase();
          result.fold(
            (err) {
              emit(LandingState.failure(err.getMsg));
            },
            (res) {
              appReviews = res;
              double sumRate = appReviews.fold(
                  0, (prev, AppReviewEntity e) => prev + e.stars);
              averageRate = sumRate / appReviews.length;
              emit(const LandingState.success());
            },
          );
        },
        getCommonIssue: () async {
          emit(const LandingState.loading());
          final result = await _getCommonIssuesUsecase();
          result.fold(
            (err) {
              emit(LandingState.failure(err.getMsg));
            },
            (res) {
              commonIssues = res;
              emit(const LandingState.success());
            },
          );
        },
        getFaq: () async {
          emit(const LandingState.loading());
          final result = await _getFAQUsecase();
          result.fold(
            (err) {
              emit(LandingState.failure(err.getMsg));
            },
            (res) {
              faqs = res;
              emit(const LandingState.success());
            },
          );
        },
        getSocialPlatforms: () async {
          emit(const LandingState.loading());
          final result = await _getSocialPlatformsUsecase();
          result.fold(
            (err) {
              emit(LandingState.failure(err.getMsg));
            },
            (res) {
              socialPlatforms = res;
              emit(const LandingState.success());
            },
          );
        },
        getDownloadPlatforms: () async {
          emit(const LandingState.loading());
          final result = await _getDownloadPlatformsUsecase();
          result.fold(
            (err) {
              emit(LandingState.failure(err.getMsg));
            },
            (res) {
              downloadPlatforms = res;
              emit(const LandingState.success());
            },
          );
        },
        orElse: () {},
      );
    });
  }
}
