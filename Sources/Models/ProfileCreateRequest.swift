//
//  ProfileCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/24/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A request containing a single resource.
public struct ProfileCreateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: ProfileCreateRequest.Data.Attributes

        /// The types and IDs of the related data to update.
        public varrelationships: ProfileCreateRequest.Data.Relationships

        /// The resource type.Value: profiles
        public private(set) var type: String = "profiles"
    }

    /// The resource data.
    public vardata: ProfileCreateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - name:
    ///   - profileType:
    init(id: String,
         name: String,
         profileType: ProfileType,
         certificateIds: [String] = [],
         deviceIds: [String] = []) {

        data = .init(
            attributes: .init(
                name: name,
                profileType: profileType
            ),
            relationships: .init(
                bundleId: .init(data: .init(id: id)),
                certificates: .init(data: certificateIds.map { .init(id: $0) }),
                devices: .init(data: deviceIds.map { .init(id: $0) })
            )
        )
    }
}

// MARK: ProfileCreateRequest.Data
extension ProfileCreateRequest.Data {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The name of the profile.
        public varname: String?

        /// The type of the profile.
        public varprofileType: ProfileType?
    }

    public struct Relationships: Codable {

        /// ProfileCreateRequest.Data.Relationships.BundleId (Required)
        public varbundleId: ProfileCreateRequest.Data.Relationships.BundleId

        /// ProfileCreateRequest.Data.Relationships.Certificates (Required)
        public varcertificates: ProfileCreateRequest.Data.Relationships.Certificates

        /// ProfileCreateRequest.Data.Relationships.Devices
        public vardevices: ProfileCreateRequest.Data.Relationships.Devices
    }
}

// MARK: ProfileCreateRequest.Data.Relationships
extension ProfileCreateRequest.Data.Relationships {

    public struct BundleId: Codable {

        /// ProfileCreateRequest.Data.Relationships.BundleId.Data (Required)
        public vardata: ProfileCreateRequest.Data.Relationships.BundleId.Data
    }

    public struct Certificates: Codable {

        /// ProfileCreateRequest.Data.Relationships.Certificates.Data (Required)
        public vardata: [ProfileCreateRequest.Data.Relationships.Certificates.Data]
    }

    public struct Devices: Codable {

        /// ProfileCreateRequest.Data.Relationships.Devices.Data (Required)
        public vardata: [ProfileCreateRequest.Data.Relationships.Devices.Data]
    }
}

// MARK: ProfileCreateRequest.Data.Relationships.BundleId
extension ProfileCreateRequest.Data.Relationships.BundleId {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "bundleIds"
    }
}

// MARK: ProfileCreateRequest.Data.Relationships.Certificates
extension ProfileCreateRequest.Data.Relationships.Certificates {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "certificates"
    }
}

// MARK: ProfileCreateRequest.Data.Relationships.Devices
extension ProfileCreateRequest.Data.Relationships.Devices {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "devices"
    }
}
