//
//  BundleId.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct BundleId: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The unique identifier of the bundle id.
        public var identifier: String?

        /// The name for the bundle id.
        public var name: String?

        /// The platform for the bundle id.
        public var platform: BundleIdPlatform?

        /// A seed id for the bundle id.
        public var seedId: String?
    }

    public struct Relationships: Codable {

        /// BundleId.Relationships.Profiles
        public var profiles: BundleId.Relationships.Profiles?

        /// BundleId.Relationships.BundleIdCapabilities
        public var bundleIdCapabilities: BundleId.Relationships.BundleIdCapabilities?
    }

    /// The resource's attributes.
    public var attributes: BundleId.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: BundleId.Relationships?

    /// The resource type.Value: bundleIds
    public private(set) var type: String = "bundleIds"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<BundleIdResponse>
}

// MARK: BundleId.Relationships
extension BundleId.Relationships {

    public struct Profiles: Codable {

        /// [BundleId.Relationships.Profiles.Data]
        public var data: [BundleId.Relationships.Profiles.Data]?

        /// BundleId.Relationships.Profiles.Links
        public var links: BundleId.Relationships.Profiles.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct BundleIdCapabilities: Codable {

        /// [BundleId.Relationships.BundleIdCapabilities.Data]
        public var data: [BundleId.Relationships.BundleIdCapabilities.Data]?

        /// BundleId.Relationships.BundleIdCapabilities.Links
        public var links: BundleId.Relationships.BundleIdCapabilities.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }
}

// MARK: BundleId.Relationships.Profiles
extension BundleId.Relationships.Profiles {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: profiles
        public private(set) var type: String = "profiles"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: BundleId.Relationships.BundleIdCapabilities
extension BundleId.Relationships.BundleIdCapabilities {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: profiles
        public private(set) var type: String = "bundleIdCapabilities"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
