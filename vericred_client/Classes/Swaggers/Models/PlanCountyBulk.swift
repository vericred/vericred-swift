//
// PlanCountyBulk.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PlanCountyBulk: JSONEncodable {
    /** Primary key */
    public var id: Int32?
    /** Foreign key to plan */
    public var planId: Int32?
    /** Foreign key to county */
    public var countyId: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["plan_id"] = self.planId?.encodeToJSON()
        nillableDictionary["county_id"] = self.countyId?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
