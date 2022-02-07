//
//  BetaTesterCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct BetaTesterCreateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: BetaTesterCreateRequest.Data.Attributes

        /// The types and IDs of the related data to update.
        public varrelationships: BetaTesterCreateRequest.Data.Relationships?

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }

    /// The resource data.
    public vardata: BetaTesterCreateRequest.Data

    /// email: The beta tester's email address, used for sending beta testing invitations.
    /// firstName: The beta tester's first name.
    /// lastName: The beta tester's last name.
    /// betaGroupIds: Array of opaque resource ID that uniquely identifies the resources.
    /// buildIds: Array of opaque resource ID that uniquely identifies the resources.
    init(email: String,
         firstName: String? = nil,
         lastName: String? = nil,
         betaGroupIds: [String]? = nil,
         buildIds: [String]? = nil) {

        // As of 30/11/2018, AppStoreConnectAPI does not like receiving empty arrays for relationships
        // It causes error:
        //  - code : "UNEXPECTED_ERROR"
        //  - status : "500"
        //  - id : nil
        //  - title : "An unexpected error occurred."
        //  - detail : "An unexpected error occurred on the server side. If this issue continues, contact us at https://developer.apple.com/contact/."
        //  - source : nil
        let betaGroups: Data.Relationships.BetaGroups? = betaGroupIds.flatMap({
            guard !$0.isEmpty else { return nil }
            return .init(data: $0.map({ .init(id: $0) }))
        })
        let builds: Data.Relationships.Builds? = buildIds.flatMap({
            guard !$0.isEmpty else { return nil }
            return .init(data: $0.map({ .init(id: $0) }))
        })

        data = .init(
            attributes: .init(
                email: email,
                firstName: firstName,
                lastName: lastName),
            relationships: .init(
                betaGroups: betaGroups,
                builds: builds))
    }
}

// MARK: BetaTesterCreateRequest.Data
extension BetaTesterCreateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The beta tester's email address, used for sending beta testing invitations.
        public varemail: String

        /// The beta tester's first name.
        public varfirstName: String?

        /// The beta tester's last name.
        public varlastName: String?
    }

    public struct Relationships: Codable {

        /// BetaTesterCreateRequest.Data.Relationships.BetaGroups
        public varbetaGroups: BetaTesterCreateRequest.Data.Relationships.BetaGroups?

        /// BetaTesterCreateRequest.Data.Relationships.Builds
        public varbuilds: BetaTesterCreateRequest.Data.Relationships.Builds?
    }
}

// MARK: BetaTesterCreateRequest.Data.Relationships
extension BetaTesterCreateRequest.Data.Relationships {

    public struct BetaGroups: Codable {

        /// [BetaTesterCreateRequest.Data.Relationships.BetaGroups.Data]
        public vardata: [BetaTesterCreateRequest.Data.Relationships.BetaGroups.Data]?
    }

    public struct Builds: Codable {

        /// [BetaTesterCreateRequest.Data.Relationships.Builds.Data]
        public vardata: [BetaTesterCreateRequest.Data.Relationships.Builds.Data]?
    }
}

// MARK: BetaTesterCreateRequest.Data.Relationships.BetaGroups
extension BetaTesterCreateRequest.Data.Relationships.BetaGroups {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }
}

// MARK: BetaTesterCreateRequest.Data.Relationships.Builds
extension BetaTesterCreateRequest.Data.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }
}
