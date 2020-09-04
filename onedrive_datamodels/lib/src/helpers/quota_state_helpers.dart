import '../constants/enums.dart';

String quotaStateToJson(QuotaState state) =>
    state?.toString()?.split('.')?.last;

QuotaState quotaStateFromJson(String state) {
  switch (state?.toLowerCase()) {
    case 'normal':
      return QuotaState.normal;
    case 'nearing':
      return QuotaState.nearing;
    case 'critical':
      return QuotaState.critical;
    case 'exceeded':
      return QuotaState.exceeded;
    default:
      return null;
  }
}
