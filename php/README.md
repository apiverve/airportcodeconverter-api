# Airport Code Converter API - PHP Package

Airport Code Converter is an IATA code API that converts between 3-letter IATA and 4-letter ICAO airport codes. Submit either identifier to receive the matching code, official airport name, city, state, and country code.

## Installation

Install via Composer:

```bash
composer require apiverve/airportcodeconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Airportcodeconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['code' => 'MCI']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Airportcodeconverter\Client;
use APIVerve\Airportcodeconverter\Exceptions\APIException;
use APIVerve\Airportcodeconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['code' => 'MCI']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airportcodeconverter?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/airportcodeconverter?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/airportcodeconverter?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
