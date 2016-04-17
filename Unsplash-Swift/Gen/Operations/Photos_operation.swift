//
//  Photos.swift
//
//  Created by SwaggerGen
//

import Foundation
import Alamofire
import BrickRequest
import SwiftyJSON
import RxSwift
import RESTRequest

public struct PhotosGET: GETRequestContextType, ManagerRequestType, JSONResponseType {

    let page: Int32?
    let perPage: Int32?
    let orderBy: String?
    public var path: String {
        return "/photos"
    }
    public var parameterJSON: JSON {
        var params = [String: JSON]()
        if let value = self.page {
            params["page"] = JSON(value)
        }
        if let value = self.perPage {
            params["per_page"] = JSON(value)
        }
        if let value = self.orderBy {
            params["order_by"] = JSON(value)
        }
        return JSON(params)
    }
    public init(
        page: Int32?, 
        perPage: Int32?, 
        orderBy: String?
    ) {
        self.page = page
        self.perPage = perPage
        self.orderBy = orderBy
    }

    public func send() -> Observable<[Photos]> {
        return self.resume().map { arrayJSON in
            return arrayJSON.array?.flatMap { try? Photos(json: $0) } ?? [Photos]()
        }
    }
}

