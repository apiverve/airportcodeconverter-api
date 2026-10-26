# Airport Code Converter API - Dart/Flutter Client

Airport Code Converter is an IATA code API that converts between 3-letter IATA and 4-letter ICAO airport codes. Submit either identifier to receive the matching code, official airport name, city, state, and country code.

[![pub package](https://img.shields.io/pub/v/apiverve_airportcodeconverter.svg)](https://pub.dev/packages/apiverve_airportcodeconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Airport Code Converter API](https://apiverve.com/marketplace/airportcodeconverter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_airportcodeconverter: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_airportcodeconverter/apiverve_airportcodeconverter.dart';

void main() async {
  final client = AirportcodeconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'code': 'MCI'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "input": "MCI",
    "inputType": "IATA",
    "iata": "MCI",
    "icao": "KMCI",
    "name": "Kansas City International Airport",
    "city": "Kansas City",
    "state": "Missouri",
    "country": "US",
    "elevation": 1026,
    "latitude": 39.2976,
    "longitude": -94.7139,
    "timezone": "America/Chicago",
    "found": true
  }
}
```

## API Reference

- **API Home:** [Airport Code Converter API](https://apiverve.com/marketplace/airportcodeconverter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/airportcodeconverter](https://docs.apiverve.com/ref/airportcodeconverter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
