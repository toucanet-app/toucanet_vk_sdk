import 'account_push_params_mode.dart';
import 'account_push_params_onoff.dart';
import 'account_push_params_settings.dart';

class VKAccountPushParams {
  final List<VKAccountPushParamsMode> msg;

  final List<VKAccountPushParamsMode> chat;

  final List<VKAccountPushParamsSettings> like;

  final List<VKAccountPushParamsSettings> repost;

  final List<VKAccountPushParamsSettings> comment;

  final List<VKAccountPushParamsSettings> mention;

  final List<VKAccountPushParamsOnoff> reply;

  final List<VKAccountPushParamsOnoff> newPost;

  final List<VKAccountPushParamsOnoff> wallPost;

  final List<VKAccountPushParamsOnoff> wallPublish;

  final List<VKAccountPushParamsOnoff> friend;

  final List<VKAccountPushParamsOnoff> friendFound;

  final List<VKAccountPushParamsOnoff> friendAccepted;

  final List<VKAccountPushParamsOnoff> groupInvite;

  final List<VKAccountPushParamsOnoff> groupAccepted;

  final List<VKAccountPushParamsOnoff> birthday;

  final List<VKAccountPushParamsOnoff> eventSoon;

  final List<VKAccountPushParamsOnoff> appRequest;

  final List<VKAccountPushParamsOnoff> sdkOpen;

  const VKAccountPushParams({
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

  factory VKAccountPushParams.fromMap(Map<String, dynamic> map) {
    return VKAccountPushParams(
      msg: map['msg']?.map((item) => VKAccountPushParamsMode(item)),
      chat: map['chat']?.map((item) => VKAccountPushParamsMode(item)),
      like: map['like']?.map((item) => VKAccountPushParamsSettings(item)),
      repost: map['repost']?.map((item) => VKAccountPushParamsSettings(item)),
      comment: map['comment']?.map((item) => VKAccountPushParamsSettings(item)),
      mention: map['mention']?.map((item) => VKAccountPushParamsSettings(item)),
      reply: map['reply']?.map((item) => VKAccountPushParamsOnoff(item)),
      newPost: map['new_post']?.map((item) => VKAccountPushParamsOnoff(item)),
      wallPost: map['wall_post']?.map((item) => VKAccountPushParamsOnoff(item)),
      wallPublish:
          map['wall_publish']?.map((item) => VKAccountPushParamsOnoff(item)),
      friend: map['friend']?.map((item) => VKAccountPushParamsOnoff(item)),
      friendFound:
          map['friend_found']?.map((item) => VKAccountPushParamsOnoff(item)),
      friendAccepted:
          map['friend_accepted']?.map((item) => VKAccountPushParamsOnoff(item)),
      groupInvite:
          map['group_invite']?.map((item) => VKAccountPushParamsOnoff(item)),
      groupAccepted:
          map['group_accepted']?.map((item) => VKAccountPushParamsOnoff(item)),
      birthday: map['birthday']?.map((item) => VKAccountPushParamsOnoff(item)),
      eventSoon:
          map['event_soon']?.map((item) => VKAccountPushParamsOnoff(item)),
      appRequest:
          map['app_request']?.map((item) => VKAccountPushParamsOnoff(item)),
      sdkOpen: map['sdk_open']?.map((item) => VKAccountPushParamsOnoff(item)),
    );
  }
}
