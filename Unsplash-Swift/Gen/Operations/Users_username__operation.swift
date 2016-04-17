//
//  Users_username_.swift
//
//  Created by SwaggerGen
//

import Foundation
import Alamofire
import BrickRequest
import SwiftyJSON
import RxSwift
import RESTRequest

public struct Users_username_GET: GETRequestContextType, ManagerRequestType, JSONResponseType {

    let username: String
    let w: Int32?
    let h: Int32?
    public var path: String {
        var path = "/users/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(self.username)", options: .LiteralSearch, range: nil)
        return path
    }
    public var parameterJSON: JSON {
        var params = [String: JSON]()
        params["w"] = JSON(NSNull())
        params["h"] = JSON(NSNull())
        return JSON(params)
    }
    public init(
        username: String, 
        w: Int32?, 
        h: Int32?
    ) {
        self.username = username
        self.w = w
        self.h = h
    }

    public func send() -> Observable<Users> {
        return self.resume().map { try Users(json: $0) }
    }
}

