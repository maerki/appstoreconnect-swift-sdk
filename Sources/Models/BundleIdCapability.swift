//
//  BundleIdCapability.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct BundleIdCapability: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The type of the capabillity.
        public varcapabilityType: CapabilityType?

        /// Specific settings for this capability.
        public varsettings: [CapabilitySetting]?
    }

    public struct Relationships: Codable {

        /// BundleIdCapability.Relationships.BundleId
        public varbundleId: BundleIdCapability.Relationships.BundleId?
    }

    /// The resource's attributes.
    public varattributes: BundleIdCapability.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BundleIdCapability.Relationships?

    /// The resource type.Value: profiles
    public private(set) var type: String = "bundleIdCapabilities"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BundleIdCapabilityResponse>
}

// MARK: BundleIdCapability.Relationships
extension BundleIdCapability.Relationships {

    public struct BundleId: Codable {

        /// BundleIdCapability.Relationships.BundleId.Data
        public vardata: BundleIdCapability.Relationships.BundleId.Data?

        /// BundleIdCapability.Relationships.BundleId.Links
        public varlinks: BundleIdCapability.Relationships.BundleId.Links?
    }
}

// MARK: BundleIdCapability.Relationships.BundleId
extension BundleIdCapability.Relationships.BundleId {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "bundleIds"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
