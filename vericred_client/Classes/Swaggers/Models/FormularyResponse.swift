//
// FormularyResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FormularyResponse: JSONEncodable {
    /** Meta-data */
    public var meta: Meta?
    /** List of formularies. */
    public var formularies: [Formulary]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["meta"] = self.meta?.encodeToJSON()
        nillableDictionary["formularies"] = self.formularies?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
