//
//  Photos_id__operation.swift
//
//  Created by SwaggerGen
//

import Foundation
import Alamofire
import BrickRequest
import SwiftyJSON
import RxSwift
import RESTRequest

public struct Photos_id__operationGET: RequestContextType, GETRequestContextType, ManagerRequestType, JSONResponseType {

    let id: String
    let w: Int32
    let h: Int32
    let rect: String
    public var path: String {
        var path = "/photos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(self.id)", options: .LiteralSearch, range: nil)
        return path
    }
    public var parameterJSON: JSON {
        var params = [String: JSON]()
        params["w"] = JSON(self.w)
        params["h"] = JSON(self.h)
        params["rect"] = JSON(self.rect)
        return JSON(params)
    }
    public init(
        id: String, 
        w: Int32, 
        h: Int32, 
        rect: String
    ) {
        self.id = id
        self.w = w
        self.h = h
        self.rect = rect
    }

    public func send() -> Observable<Photo> {
        return self.resume().map { try Photo(json: $0) }
    }
}

