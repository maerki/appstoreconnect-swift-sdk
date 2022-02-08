//
//  UserInvitation.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct UserInvitation: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The email address of a pending user invitation. The email address must be valid to activate the account. It can be any email address, not necessarily one associated with an Apple ID.
        public var email: String?

        /// The first name of the user with the pending user invitation.
        public var firstName: String?

        /// The last name of the user with the pending user invitation.
        public var lastName: String?

        /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
        public var roles: [UserRole]?

        /// The expiration date of the pending invitation.
        public var expirationDate: Date?

        /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
        public var provisioningAllowed: Bool?

        /// A Boolean value that indicates whether a user has access to all apps available to the team.
        public var allAppsVisible: Bool?
    }

    public struct Relationships: Codable {

        /// UserInvitation.Relationships.VisibleApps
        public var visibleApps: UserInvitation.Relationships.VisibleApps?
    }

    /// The resource's attributes.
    public var attributes: UserInvitation.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: UserInvitation.Relationships?

    /// The resource type.Value: userInvitations
    public private(set) var type: String = "userInvitations"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<UserInvitationResponse>
}

// MARK: UserInvitation.Relationships
extension UserInvitation.Relationships {

    public struct VisibleApps: Codable {

        /// [UserInvitation.Relationships.VisibleApps.Data]
        public var data: [UserInvitation.Relationships.VisibleApps.Data]?

        /// UserInvitation.Relationships.VisibleApps.Links
        public var links: UserInvitation.Relationships.VisibleApps.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }
}

// MARK: UserInvitation.Relationships.VisibleApps
extension UserInvitation.Relationships.VisibleApps {

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
