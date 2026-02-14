using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AirportCodeConverter
{
    /// <summary>
    /// Query options for the Airport Code Converter API
    /// </summary>
    public class AirportCodeConverterQueryOptions
    {
        /// <summary>
        /// The airport code to convert (IATA: 3 letters, ICAO: 4 letters)
        /// </summary>
        [JsonProperty("code")]
        public string Code { get; set; }
    }
}
