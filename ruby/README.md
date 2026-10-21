# Airport Code Converter API - Ruby Gem

Airport Code Converter is an IATA code API that converts between 3-letter IATA and 4-letter ICAO airport codes. Submit either identifier to receive the matching code, official airport name, city, state, and country code.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_airportcodeconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_airportcodeconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_airportcodeconverter'

# Initialize the client
client = APIVerve::Airportcodeconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ code: "MCI" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ code: "MCI" })
  puts response["data"]
rescue APIVerve::Airportcodeconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Airportcodeconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Airportcodeconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airportcodeconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/airportcodeconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/airportcodeconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
