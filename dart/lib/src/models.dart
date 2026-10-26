/// Response models for the Airport Code Converter API.

/// API Response wrapper.
class AirportcodeconverterResponse {
  final String status;
  final dynamic error;
  final AirportcodeconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AirportcodeconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AirportcodeconverterResponse.fromJson(Map<String, dynamic> json) => AirportcodeconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirportcodeconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Airport Code Converter API.

class AirportcodeconverterData {
  String? input;
  String? inputType;
  String? iata;
  String? icao;
  String? name;
  String? city;
  String? state;
  String? country;
  num? elevation;
  num? latitude;
  num? longitude;
  String? timezone;
  bool? found;

  AirportcodeconverterData({
    this.input,
    this.inputType,
    this.iata,
    this.icao,
    this.name,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.latitude,
    this.longitude,
    this.timezone,
    this.found,
  });

  factory AirportcodeconverterData.fromJson(Map<String, dynamic> json) => AirportcodeconverterData(
      input: json['input'],
      inputType: json['inputType'],
      iata: json['iata'],
      icao: json['icao'],
      name: json['name'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      elevation: json['elevation'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      timezone: json['timezone'],
      found: json['found'],
    );
}

class AirportcodeconverterRequest {
  String code;

  AirportcodeconverterRequest({
    required this.code,
  });

  Map<String, dynamic> toJson() => {
      'code': code,
    };
}
