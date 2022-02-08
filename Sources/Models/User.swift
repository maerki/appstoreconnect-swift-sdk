//
//  User.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct User: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The user's first name.
        public var firstName: String?

        /// The user's last name.
        public var lastName: String?

        /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
        public var roles: [UserRole]?

        /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
        public var provisioningAllowed: Bool?

        /// A Boolean value that indicates whether a user has access to all apps available to the team.
        public var allAppsVisible: Bool?

        /// The user's Apple ID.
        public var username: String?
    }

    public struct Relationships: Codable {

        /// User.Relationships.VisibleApps
        public var visibleApps: User.Relationships.VisibleApps?
    }

    /// The resource's attributes.
    public var attributes: User.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: User.Relationships?

    /// The resource type.Value: users
    public private(set) var type: String = "users"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<UserResponse>
}

// MARK: User.Relationships
extension User.Relationships {

    public struct VisibleApps: Codable {

        /// [User.Relationships.VisibleApps.Data]
        public var data: [User.Relationships.VisibleApps.Data]?

        /// User.Relationships.VisibleApps.Links
        public var links: User.Relationships.VisibleApps.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }
}

// MARK: User.Relationships.VisibleApps
extension User.Relationships.VisibleApps {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
