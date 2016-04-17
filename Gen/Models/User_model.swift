//
//  User_model.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct User: _InitializableFromJSON, _EncodableToJSON {

    public var id: String?
    public var username: String?
    public var name: String?
    public var profileImage: ProfileImage?
    public var links: UserLinks?

    public init(json: JSON) throws {
        self.id = json["id"].getOptionalString()
        self.username = json["username"].getOptionalString()
        self.name = json["name"].getOptionalString()
        self.profileImage = try json["profile_image"].getOptionalObject(ProfileImage)
        self.links = try json["links"].getOptionalObject(UserLinks)
    }

    public init(
        id: String?,
        username: String?,
        name: String?,
        profileImage: ProfileImage?,
        links: UserLinks?
    ) {
        self.id = id
        self.username = username
        self.name = name
        self.profileImage = profileImage
        self.links = links
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.id {
            json["id"] = JSON(value)
        } else {
            json["id"] = JSON(NSNull())
        }
        if let value = self.username {
            json["username"] = JSON(value)
        } else {
            json["username"] = JSON(NSNull())
        }
        if let value = self.name {
            json["name"] = JSON(value)
        } else {
            json["name"] = JSON(NSNull())
        }
        if let value = self.profileImage {
            json["profile_image"] = value.toJSON()
        } else {
            json["profile_image"] = JSON(NSNull())
        }
        if let value = self.links {
            json["links"] = value.toJSON()
        } else {
            json["links"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
