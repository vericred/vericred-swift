//
// ServiceArea.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ServiceArea: JSONEncodable {
    /** Primary key */
    public var id: String?
    /** Issuer foreign key */
    public var issuerId: String?
    /** Name of the Service Area */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["issuer_id"] = self.issuerId
        nillableDictionary["name"] = self.name
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}