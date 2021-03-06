//
// NetworkSizesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension vericred_clientAPI {


public class NetworkSizesAPI: APIBase {
    /**
     State Network Sizes
     
     - parameter stateId: (path) State code 
     - parameter page: (query) Page of paginated response (optional)
     - parameter perPage: (query) Responses per page (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listStateNetworkSizes(stateId stateId: String, page: Int32? = nil, perPage: Int32? = nil, completion: ((data: StateNetworkSizeResponse?, error: ErrorType?) -> Void)) {
        listStateNetworkSizesWithRequestBuilder(stateId: stateId, page: page, perPage: perPage).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     State Network Sizes
     - GET /states/{stateId}/network_sizes
     - The number of in-network Providers for each network in a given state. This data is recalculated nightly.  The endpoint is paginated.
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example={
  "meta" : {
    "total" : ""
  },
  "network_sizes" : [ {
    "network_id" : "",
    "count" : "",
    "state_id" : "aeiou"
  } ]
}}]
     
     - parameter stateId: (path) State code 
     - parameter page: (query) Page of paginated response (optional)
     - parameter perPage: (query) Responses per page (optional)

     - returns: RequestBuilder<StateNetworkSizeResponse> 
     */
    public class func listStateNetworkSizesWithRequestBuilder(stateId stateId: String, page: Int32? = nil, perPage: Int32? = nil) -> RequestBuilder<StateNetworkSizeResponse> {
        var path = "/states/{stateId}/network_sizes"
        path = path.stringByReplacingOccurrencesOfString("{stateId}", withString: "\(stateId)", options: .LiteralSearch, range: nil)
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<StateNetworkSizeResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Network Sizes
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func searchNetworkSizes(body body: StateNetworkSizeRequest, completion: ((data: StateNetworkSizeResponse?, error: ErrorType?) -> Void)) {
        searchNetworkSizesWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Network Sizes
     - POST /network_sizes/search
     - The number of in-network Providers for each network/state combination provided. This data is recalculated nightly.
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example={
  "meta" : {
    "total" : ""
  },
  "network_sizes" : [ {
    "network_id" : "",
    "count" : "",
    "state_id" : "aeiou"
  } ]
}}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<StateNetworkSizeResponse> 
     */
    public class func searchNetworkSizesWithRequestBuilder(body body: StateNetworkSizeRequest) -> RequestBuilder<StateNetworkSizeResponse> {
        let path = "/network_sizes/search"
        let URLString = vericred_clientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<StateNetworkSizeResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
}
