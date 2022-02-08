//
//  BundleIdCapabilityCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A request containing a single resource.
public struct BundleIdCapabilityCreateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public var attributes: BundleIdCapabilityCreateRequest.Data.Attributes

        /// The types and IDs of the related data to update.
        public var relationships: BundleIdCapabilityCreateRequest.Data.Relationships

        /// The resource type.Value: bundleIdCapabilities
        public private(set) var type: String = "bundleIdCapabilities"
    }

    /// The resource data.
    public var data: BundleIdCapabilityCreateRequest.Data

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
            relationships: .init(
                bundleId: .init(data: .init(id: bundleId))))
    }
}

// MARK: BundleIdCapabilityCreateRequest.Data
extension BundleIdCapabilityCreateRequest.Data {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The type of the capabillity.
        public var capabilityType: CapabilityType?

        /// Specific settings for this capability.
        public var settings: [CapabilitySetting]?
    }

    public struct Relationships: Codable {

        /// BundleIdCapabilityCreateRequest.Data.Relationships.BundleId (Required)
        public var bundleId: BundleIdCapabilityCreateRequest.Data.Relationships.BundleId
    }
}

// MARK: BundleIdCapabilityCreateRequest.Data.Relationships
extension BundleIdCapabilityCreateRequest.Data.Relationships {

    public struct BundleId: Codable {

        /// BundleIdCapabilityCreateRequest.Data.Relationships.BundleId.Data (Required)
        public var data: BundleIdCapabilityCreateRequest.Data.Relationships.BundleId.Data
    }
}

// MARK: BundleIdCapabilityCreateRequest.Data.Relationships.BundleId
extension BundleIdCapabilityCreateRequest.Data.Relationships.BundleId {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "bundleIds"
    }
}
