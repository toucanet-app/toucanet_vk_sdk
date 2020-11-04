/// .
class GroupsGroupSubject {
  final String value;

  const GroupsGroupSubject._(this.value);

  factory GroupsGroupSubject(value) {
    if (!values.contains(value)) return null;

    return GroupsGroupSubject._(value);
  }

  static const GroupsGroupSubject auto = GroupsGroupSubject._(1);

  static const GroupsGroupSubject activityHolidays = GroupsGroupSubject._(2);

  static const GroupsGroupSubject business = GroupsGroupSubject._(3);

  static const GroupsGroupSubject pets = GroupsGroupSubject._(4);

  static const GroupsGroupSubject health = GroupsGroupSubject._(5);

  static const GroupsGroupSubject datingAndCommunication = GroupsGroupSubject._(6);

  static const GroupsGroupSubject games = GroupsGroupSubject._(7);

  static const GroupsGroupSubject it = GroupsGroupSubject._(8);

  static const GroupsGroupSubject cinema = GroupsGroupSubject._(9);

  static const GroupsGroupSubject beautyAndFashion = GroupsGroupSubject._(10);

  static const GroupsGroupSubject cooking = GroupsGroupSubject._(11);

  static const GroupsGroupSubject artAndCulture = GroupsGroupSubject._(12);

  static const GroupsGroupSubject literature = GroupsGroupSubject._(13);

  static const GroupsGroupSubject mobileServicesAndInternet = GroupsGroupSubject._(14);

  static const GroupsGroupSubject music = GroupsGroupSubject._(15);

  static const GroupsGroupSubject scienceAndTechnology = GroupsGroupSubject._(16);

  static const GroupsGroupSubject realEstate = GroupsGroupSubject._(17);

  static const GroupsGroupSubject newsAndMedia = GroupsGroupSubject._(18);

  static const GroupsGroupSubject security = GroupsGroupSubject._(19);

  static const GroupsGroupSubject education = GroupsGroupSubject._(20);

  static const GroupsGroupSubject homeAndRenovations = GroupsGroupSubject._(21);

  static const GroupsGroupSubject politics = GroupsGroupSubject._(22);

  static const GroupsGroupSubject food = GroupsGroupSubject._(23);

  static const GroupsGroupSubject industry = GroupsGroupSubject._(24);

  static const GroupsGroupSubject travel = GroupsGroupSubject._(25);

  static const GroupsGroupSubject work = GroupsGroupSubject._(26);

  static const GroupsGroupSubject entertainment = GroupsGroupSubject._(27);

  static const GroupsGroupSubject religion = GroupsGroupSubject._(28);

  static const GroupsGroupSubject family = GroupsGroupSubject._(29);

  static const GroupsGroupSubject sports = GroupsGroupSubject._(30);

  static const GroupsGroupSubject insurance = GroupsGroupSubject._(31);

  static const GroupsGroupSubject television = GroupsGroupSubject._(32);

  static const GroupsGroupSubject goodsAndServices = GroupsGroupSubject._(33);

  static const GroupsGroupSubject hobbies = GroupsGroupSubject._(34);

  static const GroupsGroupSubject finance = GroupsGroupSubject._(35);

  static const GroupsGroupSubject photo = GroupsGroupSubject._(36);

  static const GroupsGroupSubject esoterics = GroupsGroupSubject._(37);

  static const GroupsGroupSubject electronicsAndAppliances = GroupsGroupSubject._(38);

  static const GroupsGroupSubject erotic = GroupsGroupSubject._(39);

  static const GroupsGroupSubject humor = GroupsGroupSubject._(40);

  static const GroupsGroupSubject societyHumanities = GroupsGroupSubject._(41);

  static const GroupsGroupSubject designAndGraphics = GroupsGroupSubject._(42);

  static List get values => const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42];

  @override
  String toString() => '$value';
}
