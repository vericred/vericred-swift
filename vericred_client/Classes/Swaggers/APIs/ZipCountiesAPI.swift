//
// ZipCountiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension vericred_clientAPI {


public class ZipCountiesAPI: APIBase {
    /**
     Find Zip Counties by Zip Code
     
     - parameter zipPrefix: (query) Partial five-digit Zip 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func zipCountiesGet(zipPrefix zipPrefix: String, completion: ((data: InlineResponse2002?, error: ErrorType?) -> Void)) {
        zipCountiesGetWithRequestBuilder(zipPrefix: zipPrefix).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Find Zip Counties by Zip Code
     - GET /zip_counties
     - ### Finding Zip Code and Fips Code

Our `Plan` endpoints require a zip code and a fips (county) code.  This is
because plan pricing requires both of these elements.  Users are unlikely to
know their fips code, so we provide this endpoint to look up a `ZipCounty` by
zip code and return both the selected zip and fips codes.


     - examples: [{contentType=application/json, example={
  "zip_counties" : [ {
    "county_id" : 1,
    "zip_code_id" : 2
  } ],
  "zip_codes" : [ {
    "id" : 2,
    "code" : "10024"
  } ],
  "counties" : [ {
    "id" : 1,
    "fips_code" : "36061",
    "name" : "New York",
    "state_code" : "NY",
    "state_live" : true,
    "state_live_for_business" : false
  } ]
}}]
     
     - parameter zipPrefix: (query) Partial five-digit Zip 

     - returns: RequestBuilder<InlineResponse2002> 
     */
    public class func zipCountiesGetWithRequestBuilder(zipPrefix zipPrefix: String) -> RequestBuilder<InlineResponse2002> {
        let path = "/zip_counties"
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "zip_prefix": zipPrefix
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<InlineResponse2002>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
}
