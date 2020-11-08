import 'vk_account_push_params_mode.dart';
import 'vk_account_push_params_onoff.dart';
import 'vk_account_push_params_settings.dart';

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
      'msg': msg
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'chat': chat
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'like': like
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'repost': repost
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'comment': comment
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'mention': mention
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'reply': reply
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'new_post': newPost
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'wall_post': wallPost
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'wall_publish': wallPublish
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'friend': friend
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'friend_found': friendFound
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'friend_accepted': friendAccepted
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'group_invite': groupInvite
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'group_accepted': groupAccepted
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'birthday': birthday
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'event_soon': eventSoon
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'app_request': appRequest
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
      'sdk_open': sdkOpen
          ?.map(
            (item) => item?.value,
          )
          ?.toList(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountPushParams.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAccountPushParams(
      msg: map['msg']
          ?.map<VKAccountPushParamsMode>(
            (item) => VKAccountPushParamsMode(item),
          )
          ?.toList(),
      chat: map['chat']
          ?.map<VKAccountPushParamsMode>(
            (item) => VKAccountPushParamsMode(item),
          )
          ?.toList(),
      like: map['like']
          ?.map<VKAccountPushParamsSettings>(
            (item) => VKAccountPushParamsSettings(item),
          )
          ?.toList(),
      repost: map['repost']
          ?.map<VKAccountPushParamsSettings>(
            (item) => VKAccountPushParamsSettings(item),
          )
          ?.toList(),
      comment: map['comment']
          ?.map<VKAccountPushParamsSettings>(
            (item) => VKAccountPushParamsSettings(item),
          )
          ?.toList(),
      mention: map['mention']
          ?.map<VKAccountPushParamsSettings>(
            (item) => VKAccountPushParamsSettings(item),
          )
          ?.toList(),
      reply: map['reply']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      newPost: map['new_post']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      wallPost: map['wall_post']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      wallPublish: map['wall_publish']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      friend: map['friend']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      friendFound: map['friend_found']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      friendAccepted: map['friend_accepted']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      groupInvite: map['group_invite']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      groupAccepted: map['group_accepted']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      birthday: map['birthday']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      eventSoon: map['event_soon']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      appRequest: map['app_request']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
      sdkOpen: map['sdk_open']
          ?.map<VKAccountPushParamsOnoff>(
            (item) => VKAccountPushParamsOnoff(item),
          )
          ?.toList(),
    );
  }
}
