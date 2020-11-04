import 'base_object_count.dart';

class WidgetsWidgetPage {
  final BaseObjectCount comments;

  /// Date when widgets on the page has been initialized firstly in Unixtime.
  final int date;

  /// Page description.
  final String description;

  /// Page ID.
  final int id;

  final BaseObjectCount likes;

  /// page_id parameter value.
  final String pageId;

  /// URL of the preview image.
  final String photo;

  /// Page title.
  final String title;

  /// Page absolute URL.
  final String url;

  const WidgetsWidgetPage({
    this.comments,
    this.date,
    this.description,
    this.id,
    this.likes,
    this.pageId,
    this.photo,
    this.title,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments?.toMap(),
      'date': date,
      'description': description,
      'id': id,
      'likes': likes?.toMap(),
      'page_id': pageId,
      'photo': photo,
      'title': title,
      'url': url,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory WidgetsWidgetPage.fromMap(Map<String, dynamic> map) {
    return WidgetsWidgetPage(
      comments: BaseObjectCount.fromMap(map['comments']),
      date: map['date'] as int,
      description: map['description'] as String,
      id: map['id'] as int,
      likes: BaseObjectCount.fromMap(map['likes']),
      pageId: map['page_id'] as String,
      photo: map['photo'] as String,
      title: map['title'] as String,
      url: map['url'] as String,
    );
  }
}
