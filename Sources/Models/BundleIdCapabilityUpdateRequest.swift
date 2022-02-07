//
//  BundleIdCapabilityUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A request containing a single resource.
public struct BundleIdCapabilityUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: BundleIdCapabilityUpdateRequest.Data.Attributes

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: bundleIdCapabilities
        public private(set) var type: String = "bundleIdCapabilities"
    }

    /// The object types and IDs of the related resources.
    public vardata: BundleIdCapabilityUpdateRequest.Data

    /// - Parameters:
    ///   - bundleId: The opaque resource ID that uniquely identifies the resource.
    ///   - capabilityType: The capability type.
    ///   - settings: An optional array of settings for this capability.
    init(bundleId: String,
         capabilityType: CapabilityType,
         settings: [CapabilitySetting]? = nil) {
        data = .init(
            attributes: .init(
                capabilityType: capabilityType,
                settings: settings
            ),
            id: bundleId)
    }
}

// MARK: BundleIdCapabilityCreateRequest.Data
extension BundleIdCapabilityUpdateRequest.Data {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The type of the capabillity.
        public varcapabilityType: CapabilityType?

        /// Specific settings for this capability.
        public varsettings: [CapabilitySetting]?
    }
}
