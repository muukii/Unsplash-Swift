//
//  PhotoURLs_model.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct PhotoURLs: _InitializableFromJSON, _EncodableToJSON {

    public var raw: String?
    public var full: String?
    public var regular: String?
    public var small: String?
    public var thumb: String?

    public init(json: JSON) throws {
        self.raw = json["raw"].getOptionalString()
        self.full = json["full"].getOptionalString()
        self.regular = json["regular"].getOptionalString()
        self.small = json["small"].getOptionalString()
        self.thumb = json["thumb"].getOptionalString()
    }

    public init(
        raw: String?,
        full: String?,
        regular: String?,
        small: String?,
        thumb: String?
    ) {
        self.raw = raw
        self.full = full
        self.regular = regular
        self.small = small
        self.thumb = thumb
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.raw {
            json["raw"] = JSON(value)
        } else {
            json["raw"] = JSON(NSNull())
        }
        if let value = self.full {
            json["full"] = JSON(value)
        } else {
            json["full"] = JSON(NSNull())
        }
        if let value = self.regular {
            json["regular"] = JSON(value)
        } else {
            json["regular"] = JSON(NSNull())
        }
        if let value = self.small {
            json["small"] = JSON(value)
        } else {
            json["small"] = JSON(NSNull())
        }
        if let value = self.thumb {
            json["thumb"] = JSON(value)
        } else {
            json["thumb"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
