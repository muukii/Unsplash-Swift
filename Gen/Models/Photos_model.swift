//
//  Photos_model.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Photos: _InitializableFromJSON, _EncodableToJSON {

    public var id: String?
    public var width: Int32?
    public var height: Int32?
    public var color: String?
    public var likes: Int32?
    public var likedByUser: Bool?
    public var user: User?
    public var urls: PhotoURLs?
    public var links: PhotoLinks?
    public var categories: [Category]?

    public init(json: JSON) throws {
        self.id = json["id"].getOptionalString()
        self.width = json["width"].getOptionalInt32()
        self.height = json["height"].getOptionalInt32()
        self.color = json["color"].getOptionalString()
        self.likes = json["likes"].getOptionalInt32()
        self.likedByUser = json["liked_by_user"].getOptionalBool()
        self.user = try json["user"].getOptionalObject(User)
        self.urls = try json["urls"].getOptionalObject(PhotoURLs)
        self.links = try json["links"].getOptionalObject(PhotoLinks)
        self.categories = try json["categories"].getOptionalObjects(Category)
    }

    public init(
        id: String?,
        width: Int32?,
        height: Int32?,
        color: String?,
        likes: Int32?,
        likedByUser: Bool?,
        user: User?,
        urls: PhotoURLs?,
        links: PhotoLinks?,
        categories: [Category]?
    ) {
        self.id = id
        self.width = width
        self.height = height
        self.color = color
        self.likes = likes
        self.likedByUser = likedByUser
        self.user = user
        self.urls = urls
        self.links = links
        self.categories = categories
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.id {
            json["id"] = JSON(value)
        } else {
            json["id"] = JSON(NSNull())
        }
        if let value = self.width {
            json["width"] = JSON(value)
        } else {
            json["width"] = JSON(NSNull())
        }
        if let value = self.height {
            json["height"] = JSON(value)
        } else {
            json["height"] = JSON(NSNull())
        }
        if let value = self.color {
            json["color"] = JSON(value)
        } else {
            json["color"] = JSON(NSNull())
        }
        if let value = self.likes {
            json["likes"] = JSON(value)
        } else {
            json["likes"] = JSON(NSNull())
        }
        if let value = self.likedByUser {
            json["liked_by_user"] = JSON(value)
        } else {
            json["liked_by_user"] = JSON(NSNull())
        }
        if let value = self.user {
            json["user"] = value.toJSON()
        } else {
            json["user"] = JSON(NSNull())
        }
        if let value = self.urls {
            json["urls"] = value.toJSON()
        } else {
            json["urls"] = JSON(NSNull())
        }
        if let value = self.links {
            json["links"] = value.toJSON()
        } else {
            json["links"] = JSON(NSNull())
        }
        if let value = self.categories {
            json["categories"] = JSON(value.map {
                $0.toJSON()
            })
        } else {
            json["categories"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
