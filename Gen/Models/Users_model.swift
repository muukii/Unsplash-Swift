//
//  Users.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Users: _InitializableFromJSON, _EncodableToJSON {

    public var username: String?
    public var firstName: String?
    public var lastName: String?
    public var portfolioUrl: String?
    public var downloads: Int32?
    public var profileImage: ProfileImage?
    public var links: UserLinks?

    public init(json: JSON) throws {
        self.username = json["username"].getOptionalString()
        self.firstName = json["first_name"].getOptionalString()
        self.lastName = json["last_name"].getOptionalString()
        self.portfolioUrl = json["portfolio_url"].getOptionalString()
        self.downloads = json["downloads"].getOptionalInt32()
        self.profileImage = try json["profile_image"].getOptionalObject(ProfileImage)
        self.links = try json["links"].getOptionalObject(UserLinks)
    }

    public init(
        username: String?,
        firstName: String?,
        lastName: String?,
        portfolioUrl: String?,
        downloads: Int32?,
        profileImage: ProfileImage?,
        links: UserLinks?
    ) {
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.portfolioUrl = portfolioUrl
        self.downloads = downloads
        self.profileImage = profileImage
        self.links = links
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.username {
            json["username"] = JSON(value)
        } else {
            json["username"] = JSON(NSNull())
        }
        if let value = self.firstName {
            json["first_name"] = JSON(value)
        } else {
            json["first_name"] = JSON(NSNull())
        }
        if let value = self.lastName {
            json["last_name"] = JSON(value)
        } else {
            json["last_name"] = JSON(NSNull())
        }
        if let value = self.portfolioUrl {
            json["portfolio_url"] = JSON(value)
        } else {
            json["portfolio_url"] = JSON(NSNull())
        }
        if let value = self.downloads {
            json["downloads"] = JSON(value)
        } else {
            json["downloads"] = JSON(NSNull())
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
