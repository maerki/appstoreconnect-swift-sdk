//
//  UserUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct UserUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public var attributes: UserUpdateRequest.Data.Attributes?

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The types and IDs of the related data to update.
        public var relationships: UserUpdateRequest.Data.Relationships?

        /// The resource type.Value: users
        public private(set) var type: String = "users"
    }

    /// The resource data.
    public var data: UserUpdateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - allAppsVisible: Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
    ///   - provisioningAllowed: A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
    ///   - roles: Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
    ///   - appsVisibleIds: Array of opaque resource ID that uniquely identifies the resources.
    init(id: String,
         allAppsVisible: Bool? = nil,
         provisioningAllowed: Bool? = nil,
         roles: [UserRole]? = nil,
         appsVisibleIds: [String]? = nil) {
        data = .init(
            attributes: .init(
                allAppsVisible: allAppsVisible,
                provisioningAllowed: provisioningAllowed,
                roles: roles),
            id: id,
            relationships: .init(
                visibleApps: .init(data: appsVisibleIds?.map({ Data.Relationships.VisibleApps.Data(id: $0) }))))
    }
}

// MARK: UserUpdateRequest.Data
extension UserUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
        public var allAppsVisible: Bool?

        /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
        public var provisioningAllowed: Bool?

        /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
        public var roles: [UserRole]?
    }

    public struct Relationships: Codable {

        /// UserUpdateRequest.Data.Relationships.VisibleApps
        public var visibleApps: UserUpdateRequest.Data.Relationships.VisibleApps?
    }
}

// MARK: UserUpdateRequest.Data.Relationships
extension UserUpdateRequest.Data.Relationships {

    public struct VisibleApps: Codable {

        /// [UserUpdateRequest.Data.Relationships.VisibleApps.Data]
        public var data: [UserUpdateRequest.Data.Relationships.VisibleApps.Data]?
    }
}

// MARK: UserUpdateRequest.Data.Relationships.VisibleApps
extension UserUpdateRequest.Data.Relationships.VisibleApps {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }
}
