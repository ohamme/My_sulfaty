import '../enums/member_status.dart';
import '../enums/payment_status.dart';
import '../enums/salafiya_status.dart';

extension SalafiyaStatusExtension on SalafiyaStatus {
  int get value {
    switch (this) {
      case SalafiyaStatus.active:
        return 1;
      case SalafiyaStatus.completed:
        return 0;
    }
  }

  static SalafiyaStatus fromValue(int value) {
    return value == 1
        ? SalafiyaStatus.active
        : SalafiyaStatus.completed;
  }
}

extension PaymentStatusExtension on PaymentStatus {
  int get value {
    switch (this) {
      case PaymentStatus.pending:
        return 0;

      case PaymentStatus.paid:
        return 1;

      case PaymentStatus.overdue:
        return 2;
    }
  }

  static PaymentStatus fromValue(int value) {
    switch (value) {
      case 1:
        return PaymentStatus.paid;

      case 2:
        return PaymentStatus.overdue;

      default:
        return PaymentStatus.pending;
    }
  }
}

extension MemberStatusExtension on MemberStatus {
  int get value {
    switch (this) {
      case MemberStatus.active:
        return 1;

      case MemberStatus.inactive:
        return 0;
    }
  }

  static MemberStatus fromValue(int value) {
    return value == 1
        ? MemberStatus.active
        : MemberStatus.inactive;
  }
}