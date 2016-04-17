//
//  Collections.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Collections: _InitializableFromJSON, _EncodableToJSON {

    public var id: Int32?
    public var title: String?
    public var publishedAt: String?
    public var curated: Bool?
    public var coverPhoto: Photo?
    public var user: Users?
    public var links: UserLinks?

    public init(json: JSON) throws {
        self.id = json["id"].getOptionalInt32()
        self.title = json["title"].getOptionalString()
        self.publishedAt = json["published_at"].getOptionalString()
        self.curated = json["curated"].getOptionalBool()
        self.coverPhoto = try json["cover_photo"].getOptionalObject(Photo)
        self.user = try json["user"].getOptionalObject(Users)
        self.links = try json["links"].getOptionalObject(UserLinks)
    }

    public init(
        id: Int32?,
        title: String?,
        publishedAt: String?,
        curated: Bool?,
        coverPhoto: Photo?,
        user: Users?,
        links: UserLinks?
    ) {
        self.id = id
        self.title = title
        self.publishedAt = publishedAt
        self.curated = curated
        self.coverPhoto = coverPhoto
        self.user = user
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
        if let value = self.publishedAt {
            json["published_at"] = JSON(value)
        } else {
            json["published_at"] = JSON(NSNull())
        }
        if let value = self.curated {
            json["curated"] = JSON(value)
        } else {
            json["curated"] = JSON(NSNull())
        }
        if let value = self.coverPhoto {
            json["cover_photo"] = value.toJSON()
        } else {
            json["cover_photo"] = JSON(NSNull())
        }
        if let value = self.user {
            json["user"] = value.toJSON()
        } else {
            json["user"] = JSON(NSNull())
        }
        if let value = self.links {
            json["links"] = value.toJSON()
        } else {
            json["links"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
