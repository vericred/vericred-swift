//
// Drug.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Drug: JSONEncodable {
    /** National Drug Code ID */
    public var id: String?
    /** Active Ingredient Strength information */
    public var activeIngredientStrength: String?
    /** Proprietary name of drug */
    public var proprietaryName: String?
    /** Non-proprietary name of drug */
    public var nonProprietaryName: String?
    /** Array of drug package Ids */
    public var drugPackageIds: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["active_ingredient_strength"] = self.activeIngredientStrength
        nillableDictionary["proprietary_name"] = self.proprietaryName
        nillableDictionary["non_proprietary_name"] = self.nonProprietaryName
        nillableDictionary["drug_package_ids"] = self.drugPackageIds?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
