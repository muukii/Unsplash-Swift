//
//  Users_operation.swift
//
//  Created by SwaggerGen
//

import Foundation
import Alamofire
import BrickRequest
import SwiftyJSON
import RxSwift
import RESTRequest

public struct Users_operationPUT: RequestContextType, PUTRequestContextType, ManagerRequestType, JSONResponseType {

    let bio: String
    let username: String?
    let firstName: String?
    let lastName: String?
    let email: String?
    let url: String?
    let location: String?
    let instagramUsername: String?
    public var path: String {
        return "/Users"
    }
    public var parameterJSON: JSON {
        var params = [String: JSON]()
        params["bio"] = JSON(self.bio)
        params["username"] = JSON(NSNull())
        params["first_name"] = JSON(NSNull())
        params["last_name"] = JSON(NSNull())
        params["email"] = JSON(NSNull())
        params["url"] = JSON(NSNull())
        params["location"] = JSON(NSNull())
        params["instagram_username"] = JSON(NSNull())
        return JSON(params)
    }
    public init(
        bio: String, 
        username: String?, 
        firstName: String?, 
        lastName: String?, 
        email: String?, 
        url: String?, 
        location: String?, 
        instagramUsername: String?
    ) {
        self.bio = bio
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.url = url
        self.location = location
        self.instagramUsername = instagramUsername
    }

    public func send() -> Observable<Me> {
        return self.resume().map { try Me(json: $0) }
    }
}

