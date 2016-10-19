//
// ProvidersSearchResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProvidersSearchResponse: JSONEncodable {
    /** Meta-data */
    public var meta: Meta?
    /** Providers that fit the requested criterion. */
    public var providers: [Provider]?
    /** States that fit the requested criterion. */
    public var states: [State]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["meta"] = self.meta?.encodeToJSON()
        nillableDictionary["providers"] = self.providers?.encodeToJSON()
        nillableDictionary["states"] = self.states?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
