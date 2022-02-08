//
//  Profile.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct Profile: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {
        public var name: String?
        public var platform: BundleIdPlatform?
        public var profileContent: String?
        public var uuid: String?
        public var createdDate: Date?
        public var profileState: ProfileState?
        public var profileType: ProfileType?
        public var expirationDate: Date?
    }

    public struct Relationships: Codable {

        /// Profile.Relationships.Certificates
        public var certificates: Profile.Relationships.Certificates?

        /// Profile.Relationships.Devices
        public var devices: Profile.Relationships.Devices?

        /// Profile.Relationships.BundleId
        public var bundleId: Profile.Relationships.BundleId?
    }

    /// The resource's attributes.
    public var attributes: Profile.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: Profile.Relationships?

    /// The resource type.Value: profiles
    public private(set) var type: String = "profiles"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<ProfileResponse>
}

// MARK: Profile.Relationships
extension Profile.Relationships {

    public struct Certificates: Codable {

        /// [Profile.Relationships.Certificates.Data]
        public var data: [Profile.Relationships.Certificates.Data]?

        /// Profile.Relationships.Certificates.Links
        public var links: Profile.Relationships.Certificates.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct Devices: Codable {

        /// [Profile.Relationships.Devices.Data]
        public var data: [Profile.Relationships.Devices.Data]?

        /// Profile.Relationships.Devices.Links
        public var links: Profile.Relationships.Devices.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct BundleId: Codable {

        /// Profile.Relationships.BundleId.Data
        public var data: Profile.Relationships.BundleId.Data?

        /// Profile.Relationships.BundleId.Links
        public var links: Profile.Relationships.BundleId.Links?
    }
}

// MARK: Profile.Relationships.Certificates
extension Profile.Relationships.Certificates {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "certificates"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: Profile.Relationships.Devices
extension Profile.Relationships.Devices {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "devices"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: Profile.Relationships.BundleId
extension Profile.Relationships.BundleId {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: bundleIds
        public private(set) var type: String = "bundleIds"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
