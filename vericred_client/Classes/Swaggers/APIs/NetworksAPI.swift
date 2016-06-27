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
     - A network is a list of the doctors, other health care providers,
and hospitals that a plan has contracted with to provide medical care to
its members. This endpoint is paginated.
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

        let requestBuilder: RequestBuilder<NetworkSearchResponse>.Type = vericred_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
}
