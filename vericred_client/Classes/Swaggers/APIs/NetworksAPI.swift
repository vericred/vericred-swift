//
// NetworksAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension vericred_clientAPI {


public class NetworksAPI: APIBase {
    /**
     Networks
     
     - parameter carrierId: (query) Carrier HIOS Issuer ID 
     - parameter page: (query) Page of paginated response (optional)
     - parameter perPage: (query) Responses per page (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listNetworks(carrierId carrierId: String, page: Int32? = nil, perPage: Int32? = nil, completion: ((data: NetworkSearchResponse?, error: ErrorType?) -> Void)) {
        listNetworksWithRequestBuilder(carrierId: carrierId, page: page, perPage: perPage).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Networks
     - GET /networks
     - A network is a list of the doctors, other health care providers, and hospitals that a plan has contracted with to provide medical care to its members. This endpoint is paginated.
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example={
  "meta" : {
    "total" : ""
  },
  "networks" : [ {
    "name" : "aeiou",
    "id" : ""
  } ]
}}]
     
     - parameter carrierId: (query) Carrier HIOS Issuer ID 
     - parameter page: (query) Page of paginated response (optional)
     - parameter perPage: (query) Responses per page (optional)

     - returns: RequestBuilder<NetworkSearchResponse> 
     */
    public class func listNetworksWithRequestBuilder(carrierId carrierId: String, page: Int32? = nil, perPage: Int32? = nil) -> RequestBuilder<NetworkSearchResponse> {
        let path = "/networks"
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "carrier_id": carrierId,
            "page": page?.encodeToJSON(),
            "per_page": perPage?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<NetworkSearchResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Network Details
     
     - parameter id: (path) Primary key of the network 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func showNetwork(id id: Int32, completion: ((data: NetworkDetailsResponse?, error: ErrorType?) -> Void)) {
        showNetworkWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Network Details
     - GET /networks/{id}
     - A network is a list of the doctors, other health care providers, and hospitals that a plan has contracted with to provide medical care to its members.
     - API Key:
       - type: apiKey Vericred-Api-Key 
       - name: Vericred-Api-Key
     - examples: [{contentType=application/json, example={
  "network" : {
    "name" : "aeiou",
    "id" : "",
    "hios_issuer_ids" : [ "" ]
  }
}}]
     
     - parameter id: (path) Primary key of the network 

     - returns: RequestBuilder<NetworkDetailsResponse> 
     */
    public class func showNetworkWithRequestBuilder(id id: Int32) -> RequestBuilder<NetworkDetailsResponse> {
        var path = "/networks/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = vericred_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<NetworkDetailsResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
}
