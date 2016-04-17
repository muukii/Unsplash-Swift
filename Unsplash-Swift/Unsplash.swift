//
//  Unsplash.swift
//  Unsplash-Swift
//
//  Created by muukii on 4/17/16.
//  Copyright © 2016 muukii. All rights reserved.
//

import Foundation
import RESTRequest
import Alamofire

public enum Unsplash {
    
    public static func setClientID(clientID: String) {
        SessionStackHolder.sessionStack = Stack(clientID: clientID)
    }
}

public struct Stack: SessionStackType {
    
    public let clientID: String
    
    public init(clientID: String) {
        self.clientID = clientID
    }
    
    public var baseURLString: String {
        return "https://api.unsplash.com"
    }
    
    public var defaultHeader: [String : String] {
        return [:]
    }
    
    public var defaultParameter: [String : AnyObject] {
        return ["client_id" : clientID]
    }
    
    public var manager: Alamofire.Manager {
        return Manager.sharedInstance
    }
}