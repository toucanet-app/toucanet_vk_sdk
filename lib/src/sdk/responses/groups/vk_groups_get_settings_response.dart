import 'package:meta/meta.dart';

import '../../objects/vk_objects.dart';

class VKGroupsGetSettingsResponse {
  /// Community access settings.
  final VKGroupsGroupAccess access;

  /// Community's page domain.
  final String address;

  /// Audio settings.
  final VKGroupsGroupAudio audio;

  /// Articles settings.
  final int articles;

  /// City id of group.
  final int cityId;

  final VKBaseBoolInt contacts;

  final VKBaseBoolInt links;

  final Map<String, dynamic> sectionsList;

  final VKGroupsGroupFullMainSection mainSection;

  final int secondarySection;

  final int ageLimits;

  /// Country id of group.
  final int countryId;

  /// Community description.
  final String description;

  /// Docs settings.
  final VKGroupsGroupDocs docs;

  final VKBaseBoolInt events;

  /// Information whether the obscene filter is enabled.
  final VKBaseBoolInt obsceneFilter;

  /// Information whether the stopwords filter is enabled.
  final VKBaseBoolInt obsceneStopwords;

  /// The list of stop words.
  final List<String> obsceneWords;

  final int eventGroupId;

  /// Photos settings.
  final int photos;

  /// Information about the group category.
  final int publicCategory;

  final List<VKGroupsGroupPublicCategoryList> publicCategoryList;

  final String publicDate;

  final String publicDateLabel;

  /// Information about the group subcategory.
  final int publicSubcategory;

  /// URL of the RSS feed.
  final String rss;

  /// Start date.
  final int startDate;

  /// Finish date in Unixtime format.
  final int finishDate;

  /// Community subject ID.
  final int subject;

  final List<VKGroupsSubjectItem> subjectList;

  final int suggestedPrivacy;

  /// Community title.
  final String title;

  /// Topics settings.
  final VKGroupsGroupTopics topics;

  final VKGroupsSettingsTwitter twitter;

  /// Video settings.
  final VKGroupsGroupVideo video;

  /// Wall settings.
  final VKGroupsGroupWall wall;

  /// Community website.
  final String website;

  /// Community phone.
  final String phone;

  /// Community email.
  final String email;

  /// Wiki settings.
  final VKGroupsGroupWiki wiki;

  const VKGroupsGetSettingsResponse({
    this.access,
    this.address,
    @required this.audio,
    @required this.articles,
    @required this.cityId,
    this.contacts,
    this.links,
    this.sectionsList,
    this.mainSection,
    this.secondarySection,
    this.ageLimits,
    @required this.countryId,
    @required this.description,
    @required this.docs,
    this.events,
    @required this.obsceneFilter,
    @required this.obsceneStopwords,
    @required this.obsceneWords,
    this.eventGroupId,
    @required this.photos,
    this.publicCategory,
    this.publicCategoryList,
    this.publicDate,
    this.publicDateLabel,
    this.publicSubcategory,
    this.rss,
    this.startDate,
    this.finishDate,
    this.subject,
    this.subjectList,
    this.suggestedPrivacy,
    @required this.title,
    @required this.topics,
    this.twitter,
    @required this.video,
    @required this.wall,
    this.website,
    this.phone,
    this.email,
    @required this.wiki,
  }) : assert(startDate >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access?.value,
      'address': address,
      'audio': audio?.value,
      'articles': articles,
      'city_id': cityId,
      'contacts': contacts?.value,
      'links': links?.value,
      'sections_list': sectionsList,
      'main_section': mainSection?.value,
      'secondary_section': secondarySection,
      'age_limits': ageLimits,
      'country_id': countryId,
      'description': description,
      'docs': docs?.value,
      'events': events?.value,
      'obscene_filter': obsceneFilter?.value,
      'obscene_stopwords': obsceneStopwords?.value,
      'obscene_words': obsceneWords,
      'event_group_id': eventGroupId,
      'photos': photos,
      'public_category': publicCategory,
      'public_category_list': publicCategoryList?.map((item) => item?.toMap()),
      'public_date': publicDate,
      'public_date_label': publicDateLabel,
      'public_subcategory': publicSubcategory,
      'rss': rss,
      'start_date': startDate,
      'finish_date': finishDate,
      'subject': subject,
      'subject_list': subjectList?.map((item) => item?.toMap()),
      'suggested_privacy': suggestedPrivacy,
      'title': title,
      'topics': topics?.value,
      'twitter': twitter?.toMap(),
      'video': video?.value,
      'wall': wall?.value,
      'website': website,
      'phone': phone,
      'email': email,
      'wiki': wiki?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsGetSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VKGroupsGetSettingsResponse(
      access: VKGroupsGroupAccess(map['access']),
      address: map['address'] as String,
      audio: VKGroupsGroupAudio(map['audio']),
      articles: map['articles'] as int,
      cityId: map['city_id'] as int,
      contacts: VKBaseBoolInt(map['contacts']),
      links: VKBaseBoolInt(map['links']),
      sectionsList: map['sections_list'] as Map<String, dynamic>,
      mainSection: VKGroupsGroupFullMainSection(map['main_section']),
      secondarySection: map['secondary_section'] as int,
      ageLimits: map['age_limits'] as int,
      countryId: map['country_id'] as int,
      description: map['description'] as String,
      docs: VKGroupsGroupDocs(map['docs']),
      events: VKBaseBoolInt(map['events']),
      obsceneFilter: VKBaseBoolInt(map['obscene_filter']),
      obsceneStopwords: VKBaseBoolInt(map['obscene_stopwords']),
      obsceneWords: map['obscene_words'] as List<String>,
      eventGroupId: map['event_group_id'] as int,
      photos: map['photos'] as int,
      publicCategory: map['public_category'] as int,
      publicCategoryList: map['public_category_list']
          ?.map((item) => VKGroupsGroupPublicCategoryList.fromMap(item)),
      publicDate: map['public_date'] as String,
      publicDateLabel: map['public_date_label'] as String,
      publicSubcategory: map['public_subcategory'] as int,
      rss: map['rss'] as String,
      startDate: map['start_date'] as int,
      finishDate: map['finish_date'] as int,
      subject: map['subject'] as int,
      subjectList:
          map['subject_list']?.map((item) => VKGroupsSubjectItem.fromMap(item)),
      suggestedPrivacy: map['suggested_privacy'] as int,
      title: map['title'] as String,
      topics: VKGroupsGroupTopics(map['topics']),
      twitter: VKGroupsSettingsTwitter.fromMap(map['twitter']),
      video: VKGroupsGroupVideo(map['video']),
      wall: VKGroupsGroupWall(map['wall']),
      website: map['website'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      wiki: VKGroupsGroupWiki(map['wiki']),
    );
  }
}
