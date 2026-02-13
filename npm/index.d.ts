declare module '@apiverve/airportcodeconverter' {
  export interface airportcodeconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface airportcodeconverterResponse {
    status: string;
    error: string | null;
    data: AirportCodeConverterData;
    code?: number;
  }


  interface AirportCodeConverterData {
      input:     string;
      inputType: string;
      iata:      string;
      icao:      string;
      name:      string;
      city:      string;
      state:     string;
      country:   string;
      found:     boolean;
  }

  export default class airportcodeconverterWrapper {
    constructor(options: airportcodeconverterOptions);

    execute(callback: (error: any, data: airportcodeconverterResponse | null) => void): Promise<airportcodeconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportcodeconverterResponse | null) => void): Promise<airportcodeconverterResponse>;
    execute(query?: Record<string, any>): Promise<airportcodeconverterResponse>;
  }
}
