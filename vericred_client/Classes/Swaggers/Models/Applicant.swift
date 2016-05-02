//
// Applicant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Applicant: JSONEncodable {
    /** Primary key */
    public var id: Int32?
    /** Date of Birth */
    public var dob: NSDate?
    /** Foreign key to members */
    public var memberId: String?
    /** Full name of the Applicant */
    public var name: String?
    /** Relationship of the Applicant to the Member */
    public var relationship: String?
    /** Does the Applicant smoke? */
    public var smoker: Bool?
    /** Applicant&#39;s Social Security Number */
    public var ssn: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["dob"] = self.dob?.encodeToJSON()
        nillableDictionary["member_id"] = self.memberId
        nillableDictionary["name"] = self.name
        nillableDictionary["relationship"] = self.relationship
        nillableDictionary["smoker"] = self.smoker
        nillableDictionary["ssn"] = self.ssn
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}