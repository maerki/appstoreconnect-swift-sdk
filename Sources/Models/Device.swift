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
        public var deviceClass: DeviceClass?
        public var model: String?
        public var name: String?
        public var platform: BundleIdPlatform?
        public var status: DeviceStatus?
        public var udid: String?
        public var addedDate: Date?
    }

    /// The resource's attributes.
    public var attributes: Device.Attributes

    /// The opaque resource ID that uniquely identifies the resource.
    public var id: String

    /// The resource type.
    public private(set) var type: String = "devices"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<Device>
}
