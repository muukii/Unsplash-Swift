//
//  Me.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Me: _InitializableFromJSON, _EncodableToJSON {

    public var username: String?
    public var firstName: String?
    public var lastName: String?
    public var portfolioUrl: String?
    public var downloads: Int32?
    public var bio: String?
    public var uploadsRemaining: Int32?
    public var instagramUsername: String?
    public var location: String?
    public var email: String?
    public var links: UserLinks?

    public init(json: JSON) throws {
        self.username = json["username"].getOptionalString()
        self.firstName = json["first_name"].getOptionalString()
        self.lastName = json["last_name"].getOptionalString()
        self.portfolioUrl = json["portfolio_url"].getOptionalString()
        self.downloads = json["downloads"].getOptionalInt32()
        self.bio = json["bio"].getOptionalString()
        self.uploadsRemaining = json["uploads_remaining"].getOptionalInt32()
        self.instagramUsername = json["instagram_username"].getOptionalString()
        self.location = json["location"].getOptionalString()
        self.email = json["email"].getOptionalString()
        self.links = try json["links"].getOptionalObject(UserLinks)
    }

    public init(
        username: String?,
        firstName: String?,
        lastName: String?,
        portfolioUrl: String?,
        downloads: Int32?,
        bio: String?,
        uploadsRemaining: Int32?,
        instagramUsername: String?,
        location: String?,
        email: String?,
        links: UserLinks?
    ) {
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.portfolioUrl = portfolioUrl
        self.downloads = downloads
        self.bio = bio
        self.uploadsRemaining = uploadsRemaining
        self.instagramUsername = instagramUsername
        self.location = location
        self.email = email
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
        if let value = self.bio {
            json["bio"] = JSON(value)
        } else {
            json["bio"] = JSON(NSNull())
        }
        if let value = self.uploadsRemaining {
            json["uploads_remaining"] = JSON(value)
        } else {
            json["uploads_remaining"] = JSON(NSNull())
        }
        if let value = self.instagramUsername {
            json["instagram_username"] = JSON(value)
        } else {
            json["instagram_username"] = JSON(NSNull())
        }
        if let value = self.location {
            json["location"] = JSON(value)
        } else {
            json["location"] = JSON(NSNull())
        }
        if let value = self.email {
            json["email"] = JSON(value)
        } else {
            json["email"] = JSON(NSNull())
        }
        if let value = self.links {
            json["links"] = value.toJSON()
        } else {
            json["links"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
