//
// PlanCounty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PlanCounty: JSONEncodable {
    /** Foreign key to plan */
    public var planId: Int32?
    /** Foreign key to county */
    public var countyId: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["plan_id"] = self.planId?.encodeToJSON()
        nillableDictionary["county_id"] = self.countyId?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
