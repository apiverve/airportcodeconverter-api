# Airport Code Converter API - Dart/Flutter Client

Airport Code Converter is a simple tool for converting between IATA (3-letter) and ICAO (4-letter) airport codes. Submit either format and get the corresponding code back.

[![pub package](https://img.shields.io/pub/v/apiverve_airportcodeconverter.svg)](https://pub.dev/packages/apiverve_airportcodeconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Airport Code Converter API](https://apiverve.com/marketplace/airportcodeconverter?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_airportcodeconverter: ^1.1.13
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
    "found": true
  }
}
```

## API Reference

- **API Home:** [Airport Code Converter API](https://apiverve.com/marketplace/airportcodeconverter?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/airportcodeconverter](https://docs.apiverve.com/ref/airportcodeconverter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
