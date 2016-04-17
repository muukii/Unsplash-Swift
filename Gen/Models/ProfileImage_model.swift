//
//  ProfileImage_model.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct ProfileImage: _InitializableFromJSON, _EncodableToJSON {

    public var small: String?
    public var medium: String?
    public var large: String?
    public var custom: String?

    public init(json: JSON) throws {
        self.small = json["small"].getOptionalString()
        self.medium = json["medium"].getOptionalString()
        self.large = json["large"].getOptionalString()
        self.custom = json["custom"].getOptionalString()
    }

    public init(
        small: String?,
        medium: String?,
        large: String?,
        custom: String?
    ) {
        self.small = small
        self.medium = medium
        self.large = large
        self.custom = custom
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.small {
            json["small"] = JSON(value)
        } else {
            json["small"] = JSON(NSNull())
        }
        if let value = self.medium {
            json["medium"] = JSON(value)
        } else {
            json["medium"] = JSON(NSNull())
        }
        if let value = self.large {
            json["large"] = JSON(value)
        } else {
            json["large"] = JSON(NSNull())
        }
        if let value = self.custom {
            json["custom"] = JSON(value)
        } else {
            json["custom"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
