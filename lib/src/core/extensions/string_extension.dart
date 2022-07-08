extension XString on String {
  bool get isValidZIPCode {
    final zipRegexp = RegExp(r'^[0-9]{5}(?:[0-9]{4})?$');
    return zipRegexp.hasMatch(this);
  }

  // country ^([a-zA-Z]{2,})

  bool get isValidCountry {
    final countryRegexp = RegExp(r'^([a-zA-Z]{2,})');
    return countryRegexp.hasMatch(this);
  }
  // state --> length > 3

  bool get isValidState {
    final stateRegexp = RegExp(r'^([a-zA-Z]{2,})(?: [a-zA-Z]{2,})*$');
    return stateRegexp.hasMatch(this);
  }

  // street --> length > 3
  bool get isValidStreet => length > 3;

  // city
  bool get isValidCity {
    final cityRegexp = RegExp(r'^([a-zA-Z]{2,})(?: [a-zA-Z]{2,})*$');
    return cityRegexp.hasMatch(this);
  }

  //! email

  bool get isValidEmail {
    final reg = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return reg.hasMatch(this);
  }

  bool get isValidPhone {
    final reg = RegExp(r'^[0-9]{10}$');
    return reg.hasMatch(this);
  }

  bool get isValidPager {
    final reg = RegExp(r'^[0-9]{11}$');
    return reg.hasMatch(this);
  }

  bool get isValidFax {
    final reg = RegExp(r'^[0-9]{10,13}');
    return reg.hasMatch(this);
  }

  bool get isValidNPI {
    final reg = RegExp(r'^[0-9]{10}$');
    return reg.hasMatch(this);
  }

  /// this will capitilized all the first letter
  ///
  /// eg.
  /// ```
  ///   'this is the best'.capitalizedEachFirstLetter // This Is The Best
  /// ```
  String get capitalizedEachFirstLetter =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");

  /// replaces all the underscore by space and capitilized all the first letter
  ///
  /// eg.
  /// ```
  ///   'this_is_the_best'.capitalizedEachFirstLetter // This Is The Best
  /// ```
  String get replaceBySpaceAndCaptilized =>
      replaceAll("_", " ").capitalizedEachFirstLetter;
}
