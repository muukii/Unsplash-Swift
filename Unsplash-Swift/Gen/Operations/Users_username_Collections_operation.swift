//
//  Users_username_Collections.swift
//
//  Created by SwaggerGen
//

import Foundation
import Alamofire
import BrickRequest
import SwiftyJSON
import RxSwift
import RESTRequest

public struct Users_username_CollectionsGET: GETRequestContextType, ManagerRequestType, JSONResponseType {

    let username: String
    let page: Int32?
    let perPage: Int32?
    public var path: String {
        var path = "/users/{username}/collections"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(self.username)", options: .LiteralSearch, range: nil)
        return path
    }
    public var parameterJSON: JSON {
        var params = [String: JSON]()
        if let value = self.page {
            params["page"] = JSON(value)
        }
        if let value = self.perPage {
            params["per_page"] = JSON(value)
        }
        return JSON(params)
    }
    public init(
        username: String, 
        page: Int32?, 
        perPage: Int32?
    ) {
        self.username = username
        self.page = page
        self.perPage = perPage
    }

    public func send() -> Observable<[Collections]> {
        return self.resume().map { arrayJSON in
            return arrayJSON.array?.flatMap { try? Collections(json: $0) } ?? [Collections]()
        }
    }
}

