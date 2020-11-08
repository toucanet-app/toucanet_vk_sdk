import 'package:meta/meta.dart';

class VKOrdersGetUserSubscriptionByIdResponse {
  /// Cancel reason.
  final String cancelReason;

  /// Date of creation in Unixtime.
  final int createTime;

  /// Subscription ID.
  final int id;

  /// Subscription order item.
  final String itemId;

  /// Date of next bill in Unixtime.
  final int nextBillTime;

  /// Pending cancel state.
  final bool pendingCancel;

  /// Subscription period.
  final int period;

  /// Date of last period start in Unixtime.
  final int periodStartTime;

  /// Subscription price.
  final int price;

  /// Subscription status.
  final String status;

  /// Is test subscription.
  final bool testMode;

  /// Date of trial expire in Unixtime.
  final int trialExpireTime;

  /// Date of last change in Unixtime.
  final int updateTime;

  const VKOrdersGetUserSubscriptionByIdResponse({
    this.cancelReason,
    @required this.createTime,
    @required this.id,
    @required this.itemId,
    this.nextBillTime,
    this.pendingCancel,
    @required this.period,
    @required this.periodStartTime,
    @required this.price,
    @required this.status,
    this.testMode,
    this.trialExpireTime,
    @required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cancel_reason': cancelReason,
      'create_time': createTime,
      'id': id,
      'item_id': itemId,
      'next_bill_time': nextBillTime,
      'pending_cancel': pendingCancel,
      'period': period,
      'period_start_time': periodStartTime,
      'price': price,
      'status': status,
      'test_mode': testMode,
      'trial_expire_time': trialExpireTime,
      'update_time': updateTime,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKOrdersGetUserSubscriptionByIdResponse.fromMap(
      Map<String, dynamic> map) {
    if (map == null) return null;

    return VKOrdersGetUserSubscriptionByIdResponse(
      cancelReason: map['cancel_reason'] as String,
      createTime: map['create_time'] as int,
      id: map['id'] as int,
      itemId: map['item_id'] as String,
      nextBillTime: map['next_bill_time'] as int,
      pendingCancel: map['pending_cancel'] as bool,
      period: map['period'] as int,
      periodStartTime: map['period_start_time'] as int,
      price: map['price'] as int,
      status: map['status'] as String,
      testMode: map['test_mode'] as bool,
      trialExpireTime: map['trial_expire_time'] as int,
      updateTime: map['update_time'] as int,
    );
  }
}
