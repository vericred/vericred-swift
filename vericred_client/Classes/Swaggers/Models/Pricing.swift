//
// Pricing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Pricing: JSONEncodable {
    /** Age of applicant */
    public var age: Int32?
    /** Effective date of plan */
    public var effectiveDate: NSDate?
    /** Plan expiration date */
    public var expirationDate: NSDate?
    /** Foreign key to plans */
    public var planId: Int32?
    /** Foreign key to rating areas */
    public var ratingAreaId: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["age"] = self.age?.encodeToJSON()
        nillableDictionary["effective_date"] = self.effectiveDate?.encodeToJSON()
        nillableDictionary["expiration_date"] = self.expirationDate?.encodeToJSON()
        nillableDictionary["plan_id"] = self.planId?.encodeToJSON()
        nillableDictionary["rating_area_id"] = self.ratingAreaId?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
