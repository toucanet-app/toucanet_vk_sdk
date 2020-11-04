import 'account_name_request_status.dart';

class AccountNameRequest {
  /// First name in request.
  final String firstName;

  /// Request ID needed to cancel the request.
  final int id;

  /// Last name in request.
  final String lastName;

  final AccountNameRequestStatus status;

  /// Text to display to user.
  final String lang;

  /// href for link in lang field.
  final String linkHref;

  /// label to display for link in lang field.
  final String linkLabel;

  const AccountNameRequest({
    this.firstName,
    this.id,
    this.lastName,
    this.status,
    this.lang,
    this.linkHref,
    this.linkLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': firstName,
      'id': id,
      'last_name': lastName,
      'status': status?.value,
      'lang': lang,
      'link_href': linkHref,
      'link_label': linkLabel,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AccountNameRequest.fromMap(Map<String, dynamic> map) {
    return AccountNameRequest(
      firstName: map['first_name'] as String,
      id: map['id'] as int,
      lastName: map['last_name'] as String,
      status: AccountNameRequestStatus(map['status']),
      lang: map['lang'] as String,
      linkHref: map['link_href'] as String,
      linkLabel: map['link_label'] as String,
    );
  }
}
