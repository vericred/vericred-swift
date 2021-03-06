//
// StateNetworkSizeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class StateNetworkSizeResponse: JSONEncodable {
    /** Meta-data */
    public var meta: Meta?
    /** Network Sizes */
    public var networkSizes: [NetworkSize]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["meta"] = self.meta?.encodeToJSON()
        nillableDictionary["network_sizes"] = self.networkSizes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
