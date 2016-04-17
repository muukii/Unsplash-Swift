//
//  PhotosSearch_operation.swift
//
//  Created by SwaggerGen
//

import Foundation
import Alamofire
import BrickRequest
import SwiftyJSON
import RxSwift
import RESTRequest

public struct PhotosSearch_operationGET: RequestContextType, GETRequestContextType, ManagerRequestType, JSONResponseType {

    let query: String
    let category: String
    public var path: String {
        return "/photos/search"
    }
    public var parameterJSON: JSON {
        var params = [String: JSON]()
        params["query"] = JSON(self.query)
        params["category"] = JSON(self.category)
        return JSON(params)
    }
    public init(
        query: String, 
        category: String
    ) {
        self.query = query
        self.category = category
    }

    public func send() -> Observable<[Photos]> {
        return self.resume().map { arrayJSON in
            return arrayJSON.array?.flatMap { try? Photos(json: $0) } ?? [Photos]()
        }
    }
}

