//
//  PhotoLinks.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct PhotoLinks: _InitializableFromJSON, _EncodableToJSON {

    public var _self: String?
    public var html: String?
    public var download: String?

    public init(json: JSON) throws {
        self._self = json["self"].getOptionalString()
        self.html = json["html"].getOptionalString()
        self.download = json["download"].getOptionalString()
    }

    public init(
        _self: String?,
        html: String?,
        download: String?
    ) {
        self._self = _self
        self.html = html
        self.download = download
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self._self {
            json["self"] = JSON(value)
        } else {
            json["self"] = JSON(NSNull())
        }
        if let value = self.html {
            json["html"] = JSON(value)
        } else {
            json["html"] = JSON(NSNull())
        }
        if let value = self.download {
            json["download"] = JSON(value)
        } else {
            json["download"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
