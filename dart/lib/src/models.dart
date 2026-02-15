/// Response models for the Airport Code Converter API.

/// API Response wrapper.
class AirportcodeconverterResponse {
  final String status;
  final dynamic error;
  final AirportcodeconverterData? data;

  AirportcodeconverterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AirportcodeconverterResponse.fromJson(Map<String, dynamic> json) => AirportcodeconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirportcodeconverterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
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
