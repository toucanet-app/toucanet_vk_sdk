/// .
class VKGroupsGroupSubject {
  final int value;

  const VKGroupsGroupSubject._(this.value);

  factory VKGroupsGroupSubject(value) {
    if (!values.contains(value)) return null;
    return VKGroupsGroupSubject._(value);
  }

  static const VKGroupsGroupSubject activityHolidays =
      VKGroupsGroupSubject._(2);

  static const VKGroupsGroupSubject artAndCulture = VKGroupsGroupSubject._(12);

  static const VKGroupsGroupSubject auto = VKGroupsGroupSubject._(1);

  static const VKGroupsGroupSubject beautyAndFashion =
      VKGroupsGroupSubject._(10);

  static const VKGroupsGroupSubject business = VKGroupsGroupSubject._(3);

  static const VKGroupsGroupSubject cinema = VKGroupsGroupSubject._(9);

  static const VKGroupsGroupSubject cooking = VKGroupsGroupSubject._(11);

  static const VKGroupsGroupSubject datingAndCommunication =
      VKGroupsGroupSubject._(6);

  static const VKGroupsGroupSubject designAndGraphics =
      VKGroupsGroupSubject._(42);

  static const VKGroupsGroupSubject education = VKGroupsGroupSubject._(20);

  static const VKGroupsGroupSubject electronicsAndAppliances =
      VKGroupsGroupSubject._(38);

  static const VKGroupsGroupSubject entertainment = VKGroupsGroupSubject._(27);

  static const VKGroupsGroupSubject erotic = VKGroupsGroupSubject._(39);

  static const VKGroupsGroupSubject esoterics = VKGroupsGroupSubject._(37);

  static const VKGroupsGroupSubject family = VKGroupsGroupSubject._(29);

  static const VKGroupsGroupSubject finance = VKGroupsGroupSubject._(35);

  static const VKGroupsGroupSubject food = VKGroupsGroupSubject._(23);

  static const VKGroupsGroupSubject games = VKGroupsGroupSubject._(7);

  static const VKGroupsGroupSubject goodsAndServices =
      VKGroupsGroupSubject._(33);

  static const VKGroupsGroupSubject health = VKGroupsGroupSubject._(5);

  static const VKGroupsGroupSubject hobbies = VKGroupsGroupSubject._(34);

  static const VKGroupsGroupSubject homeAndRenovations =
      VKGroupsGroupSubject._(21);

  static const VKGroupsGroupSubject humor = VKGroupsGroupSubject._(40);

  static const VKGroupsGroupSubject industry = VKGroupsGroupSubject._(24);

  static const VKGroupsGroupSubject insurance = VKGroupsGroupSubject._(31);

  static const VKGroupsGroupSubject it = VKGroupsGroupSubject._(8);

  static const VKGroupsGroupSubject literature = VKGroupsGroupSubject._(13);

  static const VKGroupsGroupSubject mobileServicesAndInternet =
      VKGroupsGroupSubject._(14);

  static const VKGroupsGroupSubject music = VKGroupsGroupSubject._(15);

  static const VKGroupsGroupSubject newsAndMedia = VKGroupsGroupSubject._(18);

  static const VKGroupsGroupSubject pets = VKGroupsGroupSubject._(4);

  static const VKGroupsGroupSubject photo = VKGroupsGroupSubject._(36);

  static const VKGroupsGroupSubject politics = VKGroupsGroupSubject._(22);

  static const VKGroupsGroupSubject realEstate = VKGroupsGroupSubject._(17);

  static const VKGroupsGroupSubject religion = VKGroupsGroupSubject._(28);

  static const VKGroupsGroupSubject scienceAndTechnology =
      VKGroupsGroupSubject._(16);

  static const VKGroupsGroupSubject security = VKGroupsGroupSubject._(19);

  static const VKGroupsGroupSubject societyHumanities =
      VKGroupsGroupSubject._(41);

  static const VKGroupsGroupSubject sports = VKGroupsGroupSubject._(30);

  static const VKGroupsGroupSubject television = VKGroupsGroupSubject._(32);

  static const VKGroupsGroupSubject travel = VKGroupsGroupSubject._(25);

  static const VKGroupsGroupSubject work = VKGroupsGroupSubject._(26);

  static List get values => const [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42
      ];

  @override
  String toString() => '$value';
}
