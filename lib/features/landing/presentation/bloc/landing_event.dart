part of 'landing_bloc.dart';

@freezed
class LandingEvent with _$LandingEvent {
  const factory LandingEvent.getAppReviews() = _GetAppReviews;
  const factory LandingEvent.addAppReview() = _AddAppReview;
  const factory LandingEvent.getCommonIssue() = _GetCommonIssue;
  const factory LandingEvent.getFaq() = _GetFaq;
  const factory LandingEvent.getDownloadPlatforms() = _GetDownloadPlatforms;
  const factory LandingEvent.getSocialPlatforms() = _GetSocialPlatforms;
  const factory LandingEvent.changeRate(double rate) = _ChangeRate;
}
