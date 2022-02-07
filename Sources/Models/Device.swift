//
//  Device.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/24/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct Device: Codable {

    /// Attributes that describe a certificate.
    public struct Attributes: Codable {
        public vardeviceClass: DeviceClass?
        public varmodel: String?
        public varname: String?
        public varplatform: BundleIdPlatform?
        public varstatus: DeviceStatus?
        public varudid: String?
        public varaddedDate: Date?
    }

    /// The resource's attributes.
    public varattributes: Device.Attributes

    /// The opaque resource ID that uniquely identifies the resource.
    public varid: String

    /// The resource type.
    public private(set) var type: String = "devices"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<Device>
}
