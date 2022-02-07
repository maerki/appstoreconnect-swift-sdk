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
        public varname: String?
        public varplatform: BundleIdPlatform?
        public varprofileContent: String?
        public varuuid: String?
        public varcreatedDate: Date?
        public varprofileState: ProfileState?
        public varprofileType: ProfileType?
        public varexpirationDate: Date?
    }

    public struct Relationships: Codable {

        /// Profile.Relationships.Certificates
        public varcertificates: Profile.Relationships.Certificates?

        /// Profile.Relationships.Devices
        public vardevices: Profile.Relationships.Devices?

        /// Profile.Relationships.BundleId
        public varbundleId: Profile.Relationships.BundleId?
    }

    /// The resource's attributes.
    public varattributes: Profile.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: Profile.Relationships?

    /// The resource type.Value: profiles
    public private(set) var type: String = "profiles"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<ProfileResponse>
}

// MARK: Profile.Relationships
extension Profile.Relationships {

    public struct Certificates: Codable {

        /// [Profile.Relationships.Certificates.Data]
        public vardata: [Profile.Relationships.Certificates.Data]?

        /// Profile.Relationships.Certificates.Links
        public varlinks: Profile.Relationships.Certificates.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct Devices: Codable {

        /// [Profile.Relationships.Devices.Data]
        public vardata: [Profile.Relationships.Devices.Data]?

        /// Profile.Relationships.Devices.Links
        public varlinks: Profile.Relationships.Devices.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BundleId: Codable {

        /// Profile.Relationships.BundleId.Data
        public vardata: Profile.Relationships.BundleId.Data?

        /// Profile.Relationships.BundleId.Links
        public varlinks: Profile.Relationships.BundleId.Links?
    }
}

// MARK: Profile.Relationships.Certificates
extension Profile.Relationships.Certificates {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "certificates"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Profile.Relationships.Devices
extension Profile.Relationships.Devices {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "devices"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Profile.Relationships.BundleId
extension Profile.Relationships.BundleId {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: bundleIds
        public private(set) var type: String = "bundleIds"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
