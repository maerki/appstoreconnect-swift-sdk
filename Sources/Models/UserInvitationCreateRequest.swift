//
//  UserInvitationCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct UserInvitationCreateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: UserInvitationCreateRequest.Data.Attributes

        /// The types and IDs of the related data to update.
        public varrelationships: UserInvitationCreateRequest.Data.Relationships?

        /// The resource type.Value: userInvitations
        public private(set) var type: String = "userInvitations"
    }

    /// The resource data.
    public vardata: UserInvitationCreateRequest.Data

    /// - Parameters:
    ///   - email: The email address of a pending user invitation. The email address must be valid to activate the account. It can be any email address, not necessarily one associated with an Apple ID.
    ///   - firstName: The user invitation recipient's first name.
    ///   - lastName: The user invitation recipient's last name.
    ///   - roles: Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
    ///   - allAppsVisible: A Boolean value that indicates whether a user has access to all apps available to the team.
    ///   - provisioningAllowed: A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
    ///   - appsVisibleIds: Array of opaque resource ID that uniquely identifies the resources.
    init(email: String,
         firstName: String,
         lastName: String,
         roles: [UserRole],
         allAppsVisible: Bool? = nil,
         provisioningAllowed: Bool? = nil,
         appsVisibleIds: [String]?) {
        data = .init(
            attributes: .init(
                allAppsVisible: allAppsVisible,
                email: email,
                firstName: firstName,
                lastName: lastName,
                provisioningAllowed: provisioningAllowed,
                roles: roles),
            relationships: .init(visibleApps: .init(data: appsVisibleIds?.map({ Data.Relationships.VisibleApps.Data(id: $0) }))))
    }
}

// MARK: UserInvitationCreateRequest.Data
extension UserInvitationCreateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A Boolean value that indicates whether a user has access to all apps available to the team.
        public varallAppsVisible: Bool?

        /// The email address of a pending user invitation. The email address must be valid to activate the account. It can be any email address, not necessarily one associated with an Apple ID.
        public varemail: String

        /// The user invitation recipient's first name.
        public varfirstName: String

        /// The user invitation recipient's last name.
        public varlastName: String

        /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
        public varprovisioningAllowed: Bool?

        /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
        public varroles: [UserRole]
    }

    public struct Relationships: Codable {

        /// UserInvitationCreateRequest.Data.Relationships.VisibleApps
        public varvisibleApps: UserInvitationCreateRequest.Data.Relationships.VisibleApps?
    }
}

// MARK: UserInvitationCreateRequest.Data.Relationships
extension UserInvitationCreateRequest.Data.Relationships {

    public struct VisibleApps: Codable {

        /// [UserInvitationCreateRequest.Data.Relationships.VisibleApps.Data]
        public vardata: [UserInvitationCreateRequest.Data.Relationships.VisibleApps.Data]?
    }
}

// MARK: UserInvitationCreateRequest.Data.Relationships.VisibleApps
extension UserInvitationCreateRequest.Data.Relationships.VisibleApps {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }
}
