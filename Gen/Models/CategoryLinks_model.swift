//
//  CategoryLinks.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct CategoryLinks: _InitializableFromJSON, _EncodableToJSON {

    public var _self: String?
    public var photos: String?

    public init(json: JSON) throws {
        self._self = json["self"].getOptionalString()
        self.photos = json["photos"].getOptionalString()
    }

    public init(
        _self: String?,
        photos: String?
    ) {
        self._self = _self
        self.photos = photos
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self._self {
            json["self"] = JSON(value)
        } else {
            json["self"] = JSON(NSNull())
        }
        if let value = self.photos {
            json["photos"] = JSON(value)
        } else {
            json["photos"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
