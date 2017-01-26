//
// RequestProvidersSearch.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class RequestProvidersSearch: JSONEncodable {
    /** Limit results to Providers who accept at least one insurance         plan.  Note that the inverse of this filter is not supported and         any value will evaluate to true */
    public var acceptsInsurance: Bool?
    /** Minimum search threshold to be included in the results */
    public var minScore: Double?
    /** List of Vericred network ids */
    public var networkIds: [Int32]?
    /** Page number */
    public var page: Int32?
    /** Number of records to return per page */
    public var perPage: Int32?
    /** Define a custom search polygon, mutually exclusive with zip_code search */
    public var polygon: Int32?
    /** Radius (in miles) to use to limit results */
    public var radius: Int32?
    /** String to search by */
    public var searchTerm: String?
    /** specify sort mode (distance or random) */
    public var sort: String?
    /** Seed value for random sort. Randomly-ordered searches with the same seed return results in consistent order. */
    public var sortSeed: Int32?
    /** Either organization or individual */
    public var type: String?
    /** Zip Code to search near */
    public var zipCode: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["accepts_insurance"] = self.acceptsInsurance
        nillableDictionary["min_score"] = self.minScore
        nillableDictionary["network_ids"] = self.networkIds?.encodeToJSON()
        nillableDictionary["page"] = self.page?.encodeToJSON()
        nillableDictionary["per_page"] = self.perPage?.encodeToJSON()
        nillableDictionary["polygon"] = self.polygon?.encodeToJSON()
        nillableDictionary["radius"] = self.radius?.encodeToJSON()
        nillableDictionary["search_term"] = self.searchTerm
        nillableDictionary["sort"] = self.sort
        nillableDictionary["sort_seed"] = self.sortSeed?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["zip_code"] = self.zipCode
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
