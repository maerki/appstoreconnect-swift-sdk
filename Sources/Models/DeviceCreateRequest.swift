//
//  DeviceCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/24/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A request containing a single resource.
public struct DeviceCreateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: DeviceCreateRequest.Data.Attributes

        /// The resource type.Value: devices
        public private(set) var type: String = "devices"
    }

    /// The resource data.
    public vardata: DeviceCreateRequest.Data

    /// - Parameters:
    ///   - name: The opaque resource ID that uniquely identifies the resource.
    ///   - platform:
    ///   - udid:
    init(name: String,
         platform: Platform,
         udid: String) {
        data = .init(
            attributes: .init(
                name: name,
                platform: platform,
                udid: udid
            ))
    }
}

// MARK: DeviceCreateRequest.Data
extension DeviceCreateRequest.Data {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The name of the device.
        public varname: String?

        /// The platform of the device.
        public varplatform: Platform?

        /// The unique id of the device.
        public varudid: String?
    }
}
