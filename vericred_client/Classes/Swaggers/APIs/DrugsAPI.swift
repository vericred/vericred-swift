//
// DrugsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension vericred_clientAPI {


public class DrugsAPI: APIBase {
    /**
     Drug Search
     
     - parameter searchTerm: (query) Full or partial proprietary name of drug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listDrugs(searchTerm searchTerm: String, completion: ((data: DrugSearchResponse?, error: ErrorType?) -> Void)) {
        listDrugsWithRequestBuilder(searchTerm: searchTerm).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Drug Search
     - GET /drugs
     - Search for drugs by proprietary name
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example={
  "drugs" : [ {
    "non_proprietary_name" : "aeiou",
    "proprietary_name" : "aeiou",
    "drug_package_ids" : [ "aeiou" ],
    "id" : "aeiou",
    "active_ingredient_strength" : "aeiou"
  } ],
  "meta" : {
    "total" : ""
  },
  "drug_packages" : [ {
    "med_id" : "",
    "description" : "aeiou",
    "id" : "aeiou"
  } ]
}}]
     
     - parameter searchTerm: (query) Full or partial proprietary name of drug 

     - returns: RequestBuilder<DrugSearchResponse> 
     */
    public class func listDrugsWithRequestBuilder(searchTerm searchTerm: String) -> RequestBuilder<DrugSearchResponse> {
        let path = "/drugs"
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "search_term": searchTerm
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DrugSearchResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
}
