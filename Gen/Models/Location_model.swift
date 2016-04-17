//
//  Location_model.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Location: _InitializableFromJSON, _EncodableToJSON {

    public var city: String?
    public var country: String?

    public init(json: JSON) throws {
        self.city = json["city"].getOptionalString()
        self.country = json["country"].getOptionalString()
    }

    public init(
        city: String?,
        country: String?
    ) {
        self.city = city
        self.country = country
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.city {
            json["city"] = JSON(value)
        } else {
            json["city"] = JSON(NSNull())
        }
        if let value = self.country {
            json["country"] = JSON(value)
        } else {
            json["country"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
