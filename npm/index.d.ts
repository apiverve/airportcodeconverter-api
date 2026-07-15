declare module '@apiverve/airportcodeconverter' {
  export interface airportcodeconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface airportcodeconverterResponse {
    status: string;
    error: string | null;
    data: AirportCodeConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AirportCodeConverterData {
      input:     null | string;
      inputType: null | string;
      iata:      null | string;
      icao:      null | string;
      name:      null | string;
      city:      null | string;
      state:     null | string;
      country:   null | string;
      elevation: number | null;
      latitude:  number | null;
      longitude: number | null;
      timezone:  null | string;
      found:     boolean | null;
  }

  export default class airportcodeconverterWrapper {
    constructor(options: airportcodeconverterOptions);

    execute(callback: (error: any, data: airportcodeconverterResponse | null) => void): Promise<airportcodeconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportcodeconverterResponse | null) => void): Promise<airportcodeconverterResponse>;
    execute(query?: Record<string, any>): Promise<airportcodeconverterResponse>;
  }
}
