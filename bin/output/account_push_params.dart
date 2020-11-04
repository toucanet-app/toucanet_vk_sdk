import 'account_push_params_mode.dart';
import 'account_push_params_settings.dart';
import 'account_push_params_onoff.dart';

class AccountPushParams {
  final List<AccountPushParamsMode> msg;

  final List<AccountPushParamsMode> chat;

  final List<AccountPushParamsSettings> like;

  final List<AccountPushParamsSettings> repost;

  final List<AccountPushParamsSettings> comment;

  final List<AccountPushParamsSettings> mention;

  final List<AccountPushParamsOnoff> reply;

  final List<AccountPushParamsOnoff> newPost;

  final List<AccountPushParamsOnoff> wallPost;

  final List<AccountPushParamsOnoff> wallPublish;

  final List<AccountPushParamsOnoff> friend;

  final List<AccountPushParamsOnoff> friendFound;

  final List<AccountPushParamsOnoff> friendAccepted;

  final List<AccountPushParamsOnoff> groupInvite;

  final List<AccountPushParamsOnoff> groupAccepted;

  final List<AccountPushParamsOnoff> birthday;

  final List<AccountPushParamsOnoff> eventSoon;

  final List<AccountPushParamsOnoff> appRequest;

  final List<AccountPushParamsOnoff> sdkOpen;

  const AccountPushParams({
    this.msg,
    this.chat,
    this.like,
    this.repost,
    this.comment,
    this.mention,
    this.reply,
    this.newPost,
    this.wallPost,
    this.wallPublish,
    this.friend,
    this.friendFound,
    this.friendAccepted,
    this.groupInvite,
    this.groupAccepted,
    this.birthday,
    this.eventSoon,
    this.appRequest,
    this.sdkOpen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msg': msg?.map((item) => item?.value),
      'chat': chat?.map((item) => item?.value),
      'like': like?.map((item) => item?.value),
      'repost': repost?.map((item) => item?.value),
      'comment': comment?.map((item) => item?.value),
      'mention': mention?.map((item) => item?.value),
      'reply': reply?.map((item) => item?.value),
      'new_post': newPost?.map((item) => item?.value),
      'wall_post': wallPost?.map((item) => item?.value),
      'wall_publish': wallPublish?.map((item) => item?.value),
      'friend': friend?.map((item) => item?.value),
      'friend_found': friendFound?.map((item) => item?.value),
      'friend_accepted': friendAccepted?.map((item) => item?.value),
      'group_invite': groupInvite?.map((item) => item?.value),
      'group_accepted': groupAccepted?.map((item) => item?.value),
      'birthday': birthday?.map((item) => item?.value),
      'event_soon': eventSoon?.map((item) => item?.value),
      'app_request': appRequest?.map((item) => item?.value),
      'sdk_open': sdkOpen?.map((item) => item?.value),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AccountPushParams.fromMap(Map<String, dynamic> map) {
    return AccountPushParams(
      msg: map['msg']?.map((item) => AccountPushParamsMode(item)),
      chat: map['chat']?.map((item) => AccountPushParamsMode(item)),
      like: map['like']?.map((item) => AccountPushParamsSettings(item)),
      repost: map['repost']?.map((item) => AccountPushParamsSettings(item)),
      comment: map['comment']?.map((item) => AccountPushParamsSettings(item)),
      mention: map['mention']?.map((item) => AccountPushParamsSettings(item)),
      reply: map['reply']?.map((item) => AccountPushParamsOnoff(item)),
      newPost: map['new_post']?.map((item) => AccountPushParamsOnoff(item)),
      wallPost: map['wall_post']?.map((item) => AccountPushParamsOnoff(item)),
      wallPublish:
          map['wall_publish']?.map((item) => AccountPushParamsOnoff(item)),
      friend: map['friend']?.map((item) => AccountPushParamsOnoff(item)),
      friendFound:
          map['friend_found']?.map((item) => AccountPushParamsOnoff(item)),
      friendAccepted:
          map['friend_accepted']?.map((item) => AccountPushParamsOnoff(item)),
      groupInvite:
          map['group_invite']?.map((item) => AccountPushParamsOnoff(item)),
      groupAccepted:
          map['group_accepted']?.map((item) => AccountPushParamsOnoff(item)),
      birthday: map['birthday']?.map((item) => AccountPushParamsOnoff(item)),
      eventSoon: map['event_soon']?.map((item) => AccountPushParamsOnoff(item)),
      appRequest:
          map['app_request']?.map((item) => AccountPushParamsOnoff(item)),
      sdkOpen: map['sdk_open']?.map((item) => AccountPushParamsOnoff(item)),
    );
  }
}
