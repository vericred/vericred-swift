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
     Search for Zip Counties
     
     - parameter zipPrefix: (query) Partial five-digit Zip 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getZipCounties(zipPrefix zipPrefix: String, completion: ((data: ZipCountiesResponse?, error: ErrorType?) -> Void)) {
        getZipCountiesWithRequestBuilder(zipPrefix: zipPrefix).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search for Zip Counties
     - GET /zip_counties
     - Our `Plan` endpoints require a zip code and a fips (county) code.  This is because plan pricing requires both of these elements.  Users are unlikely to know their fips code, so we provide this endpoint to look up a `ZipCounty` by zip code and return both the selected zip and fips codes.
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example="{\n  \"zip_counties\" : [ {\n    \"county_id\" : 1,\n    \"zip_code_id\" : 2\n  } ],\n  \"zip_codes\" : [ {\n    \"id\" : 2,\n    \"code\" : \"10024\"\n  } ],\n  \"counties\" : [ {\n    \"id\" : 1,\n    \"fips_code\" : \"36061\",\n    \"name\" : \"New York\",\n    \"state_code\" : \"NY\",\n    \"state_live\" : true,\n    \"state_live_for_business\" : false\n  } ]\n}"}]
     
     - parameter zipPrefix: (query) Partial five-digit Zip 

     - returns: RequestBuilder<ZipCountiesResponse> 
     */
    public class func getZipCountiesWithRequestBuilder(zipPrefix zipPrefix: String) -> RequestBuilder<ZipCountiesResponse> {
        let path = "/zip_counties"
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "zip_prefix": zipPrefix
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ZipCountiesResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Show an individual ZipCounty
     
     - parameter id: (path) Unique ID for ZipCounty 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func showZipCounty(id id: Int32, completion: ((data: ZipCountyResponse?, error: ErrorType?) -> Void)) {
        showZipCountyWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Show an individual ZipCounty
     - GET /zip_counties/{id}
     - Our `Plan` endpoints require a zip code and a fips (county) code.  This is because plan pricing requires both of these elements.  Users are unlikely to know their fips code, so we provide this endpoint to returns the details for a `ZipCounty` by zip code and return both the selected zip and fips codes.
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example="{\n  \"zip_county\" : {\n    \"county_id\" : 1,\n    \"zip_code_id\" : 2,\n    \"id\": 3\n  },\n  \"zip_codes\" : [ {\n    \"id\" : 2,\n    \"code\" : \"10024\"\n  } ],\n  \"counties\" : [ {\n    \"id\" : 1,\n    \"fips_code\" : \"36061\",\n    \"name\" : \"New York\",\n    \"state_code\" : \"NY\",\n    \"state_live\" : true,\n    \"state_live_for_business\" : false\n  } ]\n}"}]
     
     - parameter id: (path) Unique ID for ZipCounty 

     - returns: RequestBuilder<ZipCountyResponse> 
     */
    public class func showZipCountyWithRequestBuilder(id id: Int32) -> RequestBuilder<ZipCountyResponse> {
        var path = "/zip_counties/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ZipCountyResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
}
