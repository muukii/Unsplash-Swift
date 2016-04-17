//
//  UserLinks.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct UserLinks: _InitializableFromJSON, _EncodableToJSON {

    public var _self: String?
    public var html: String?
    public var photos: String?
    public var likes: String?

    public init(json: JSON) throws {
        self._self = json["self"].getOptionalString()
        self.html = json["html"].getOptionalString()
        self.photos = json["photos"].getOptionalString()
        self.likes = json["likes"].getOptionalString()
    }

    public init(
        _self: String?,
        html: String?,
        photos: String?,
        likes: String?
    ) {
        self._self = _self
        self.html = html
        self.photos = photos
        self.likes = likes
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self._self {
            json["self"] = JSON(value)
        } else {
            json["self"] = JSON(NSNull())
        }
        if let value = self.html {
            json["html"] = JSON(value)
        } else {
            json["html"] = JSON(NSNull())
        }
        if let value = self.photos {
            json["photos"] = JSON(value)
        } else {
            json["photos"] = JSON(NSNull())
        }
        if let value = self.likes {
            json["likes"] = JSON(value)
        } else {
            json["likes"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
