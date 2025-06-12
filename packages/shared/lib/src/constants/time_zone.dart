enum SupportedTimeZone {
  tzUnknown('Unknown'),
  tzAsiaShanghai('Asia/Shanghai'),
  tzAsiaTokyo('Asia/Tokyo'),
  tzAsiaBangkok('Asia/Bangkok'),
  tzEuropeIstanbul('Europe/Istanbul');

  final String name;
  const SupportedTimeZone(this.name);

  String get asString {
    return name;
  }

  static List<String> get allNames {
    return SupportedTimeZone.values.map((e) => e.name).toList();
  }

  static SupportedTimeZone? fromName(String name) {
    if (name.isEmpty) return null;

    final result = SupportedTimeZone.values.firstWhere(
      (e) => e.name == name,
      orElse: () => tzUnknown,
    );

    if (result == tzUnknown) return null;
    return result;
  }
}
