//
// DrugSearchResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class DrugSearchResponse: JSONEncodable {
    /** Metadata for query */
    public var meta: Meta?
    /** Drugs found in query */
    public var drugs: [Drug]?
    /** DrugPackages */
    public var drugPackages: [DrugPackage]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["meta"] = self.meta?.encodeToJSON()
        nillableDictionary["drugs"] = self.drugs?.encodeToJSON()
        nillableDictionary["drug_packages"] = self.drugPackages?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}