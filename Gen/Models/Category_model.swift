//
//  Category_model.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Category: _InitializableFromJSON, _EncodableToJSON {

    public var id: Int32?
    public var title: String?
    public var photoCount: Int32?
    public var links: CategoryLinks?

    public init(json: JSON) throws {
        self.id = json["id"].getOptionalInt32()
        self.title = json["title"].getOptionalString()
        self.photoCount = json["photo_count"].getOptionalInt32()
        self.links = try json["links"].getOptionalObject(CategoryLinks)
    }

    public init(
        id: Int32?,
        title: String?,
        photoCount: Int32?,
        links: CategoryLinks?
    ) {
        self.id = id
        self.title = title
        self.photoCount = photoCount
        self.links = links
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.id {
            json["id"] = JSON(value)
        } else {
            json["id"] = JSON(NSNull())
        }
        if let value = self.title {
            json["title"] = JSON(value)
        } else {
            json["title"] = JSON(NSNull())
        }
        if let value = self.photoCount {
            json["photo_count"] = JSON(value)
        } else {
            json["photo_count"] = JSON(NSNull())
        }
        if let value = self.links {
            json["links"] = value.toJSON()
        } else {
            json["links"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
