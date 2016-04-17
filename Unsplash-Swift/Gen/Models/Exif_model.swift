//
//  Exif.swift
//
//  Created by SwaggerGen
//

import Foundation
import SwiftyJSON

public struct Exif: _InitializableFromJSON, _EncodableToJSON {

    public var make: String?
    public var model: String?
    public var exposureTime: Double?
    public var aperture: Double?
    public var focalLength: Int32?
    public var iso: Int32?

    public init(json: JSON) throws {
        self.make = json["make"].getOptionalString()
        self.model = json["model"].getOptionalString()
        self.exposureTime = json["exposure_time"].getOptionalDouble()
        self.aperture = json["aperture"].getOptionalDouble()
        self.focalLength = json["focal_length"].getOptionalInt32()
        self.iso = json["iso"].getOptionalInt32()
    }

    public init(
        make: String?,
        model: String?,
        exposureTime: Double?,
        aperture: Double?,
        focalLength: Int32?,
        iso: Int32?
    ) {
        self.make = make
        self.model = model
        self.exposureTime = exposureTime
        self.aperture = aperture
        self.focalLength = focalLength
        self.iso = iso
    }

    public func toJSON() -> JSON {
        
        var json = [String: JSON]()

        if let value = self.make {
            json["make"] = JSON(value)
        } else {
            json["make"] = JSON(NSNull())
        }
        if let value = self.model {
            json["model"] = JSON(value)
        } else {
            json["model"] = JSON(NSNull())
        }
        if let value = self.exposureTime {
            json["exposure_time"] = JSON(value)
        } else {
            json["exposure_time"] = JSON(NSNull())
        }
        if let value = self.aperture {
            json["aperture"] = JSON(value)
        } else {
            json["aperture"] = JSON(NSNull())
        }
        if let value = self.focalLength {
            json["focal_length"] = JSON(value)
        } else {
            json["focal_length"] = JSON(NSNull())
        }
        if let value = self.iso {
            json["iso"] = JSON(value)
        } else {
            json["iso"] = JSON(NSNull())
        }
        return JSON(json)
    }
}
