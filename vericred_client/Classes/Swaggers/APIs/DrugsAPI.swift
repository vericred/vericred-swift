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
     Search for DrugCoverages
     
     - parameter ndcPackageCode: (path) NDC package code 
     - parameter audience: (query) Plan Audience (individual or small_group) 
     - parameter stateCode: (query) Two-character state code 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getDrugCoverages(ndcPackageCode ndcPackageCode: String, audience: String, stateCode: String, completion: ((data: DrugCoverageResponse?, error: ErrorType?) -> Void)) {
        getDrugCoveragesWithRequestBuilder(ndcPackageCode: ndcPackageCode, audience: audience, stateCode: stateCode).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Search for DrugCoverages
     - GET /drug_packages/{ndcPackageCode}/coverages
     - Drug Coverages are the specific tier level, quantity limit, prior authorization and step therapy for a given Drug/Plan combination. This endpoint returns all DrugCoverages for a given Drug
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example="{\n  \"coverages\" : [ {\n    \"plan_id\" : \"98825NY2251359\",\n    \"ndc_package_code\" : \"00000-0000-00\",\n    \"tier\" : \"TIER 1\",\n    \"quantity_limit\" : true,\n    \"prior_authorization\" : true,\n    \"step_therapy\" : false\n  } ]\n}"}]
     
     - parameter ndcPackageCode: (path) NDC package code 
     - parameter audience: (query) Plan Audience (individual or small_group) 
     - parameter stateCode: (query) Two-character state code 

     - returns: RequestBuilder<DrugCoverageResponse> 
     */
    public class func getDrugCoveragesWithRequestBuilder(ndcPackageCode ndcPackageCode: String, audience: String, stateCode: String) -> RequestBuilder<DrugCoverageResponse> {
        var path = "/drug_packages/{ndcPackageCode}/coverages"
        path = path.stringByReplacingOccurrencesOfString("{ndcPackageCode}", withString: "\(ndcPackageCode)", options: .LiteralSearch, range: nil)
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "audience": audience,
            "state_code": stateCode
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DrugCoverageResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

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
