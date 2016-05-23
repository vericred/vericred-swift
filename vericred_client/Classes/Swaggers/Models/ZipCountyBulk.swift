//
// ZipCountyBulk.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ZipCountyBulk: JSONEncodable {
    /** Primary key */
    public var id: Int32?
    /** Foreign key for rating area */
    public var ratingAreaId: String?
    /** Foreign key for county (fips code) */
    public var countyId: String?
    /** Foreign key for zip code (zip code) */
    public var zipCodeId: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["rating_area_id"] = self.ratingAreaId
        nillableDictionary["county_id"] = self.countyId
        nillableDictionary["zip_code_id"] = self.zipCodeId
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
