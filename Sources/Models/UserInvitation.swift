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
        public varemail: String?

        /// The first name of the user with the pending user invitation.
        public varfirstName: String?

        /// The last name of the user with the pending user invitation.
        public varlastName: String?

        /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
        public varroles: [UserRole]?

        /// The expiration date of the pending invitation.
        public varexpirationDate: Date?

        /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
        public varprovisioningAllowed: Bool?

        /// A Boolean value that indicates whether a user has access to all apps available to the team.
        public varallAppsVisible: Bool?
    }

    public struct Relationships: Codable {

        /// UserInvitation.Relationships.VisibleApps
        public varvisibleApps: UserInvitation.Relationships.VisibleApps?
    }

    /// The resource's attributes.
    public varattributes: UserInvitation.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: UserInvitation.Relationships?

    /// The resource type.Value: userInvitations
    public private(set) var type: String = "userInvitations"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<UserInvitationResponse>
}

// MARK: UserInvitation.Relationships
extension UserInvitation.Relationships {

    public struct VisibleApps: Codable {

        /// [UserInvitation.Relationships.VisibleApps.Data]
        public vardata: [UserInvitation.Relationships.VisibleApps.Data]?

        /// UserInvitation.Relationships.VisibleApps.Links
        public varlinks: UserInvitation.Relationships.VisibleApps.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }
}

// MARK: UserInvitation.Relationships.VisibleApps
extension UserInvitation.Relationships.VisibleApps {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
