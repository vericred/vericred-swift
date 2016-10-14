//
// FormularyDrugPackageResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FormularyDrugPackageResponse: JSONEncodable {
    /** DrugCoverage */
    public var coverage: DrugCoverage?
    /** DrugPackage */
    public var drugPackage: DrugPackage?
    /** Formulary */
    public var formulary: Formulary?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["coverage"] = self.coverage?.encodeToJSON()
        nillableDictionary["drug_package"] = self.drugPackage?.encodeToJSON()
        nillableDictionary["formulary"] = self.formulary?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
