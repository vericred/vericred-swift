//
// Carrier.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Carrier: JSONEncodable {
    /** Primary key */
    public var id: Int32?
    /** Name of the Carrier */
    public var name: String?
    /** URL for the Carrier&#39;s logo */
    public var logoPath: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["logo_path"] = self.logoPath
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
