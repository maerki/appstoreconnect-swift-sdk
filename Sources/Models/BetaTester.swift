//
//  BetaTester.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaTester: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The beta tester's email address, used for sending beta testing invitations.
        public varemail: String?

        /// The beta tester's first name.
        public varfirstName: String?

        /// An invite type that indicates if a beta tester was invited by an email invite or used a TestFlight public link to join a beta test.
        public varinviteType: BetaInviteType?

        /// The beta tester's last name.
        public varlastName: String?
    }

    public struct Relationships: Codable {

        /// BetaTester.Relationships.Apps
        public varapps: BetaTester.Relationships.Apps?

        /// BetaTester.Relationships.BetaGroups
        public varbetaGroups: BetaTester.Relationships.BetaGroups?

        /// BetaTester.Relationships.Builds
        public varbuilds: BetaTester.Relationships.Builds?
    }

    /// The resource's attributes.
    public varattributes: BetaTester.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BetaTester.Relationships?

    /// The resource type.Value: betaTesters
    public private(set) var type: String = "betaTesters"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BetaTesterResponse>
}

// MARK: BetaTester.Relationships
extension BetaTester.Relationships {

    public struct Apps: Codable {

        /// [BetaTester.Relationships.Apps.Data]
        public vardata: [BetaTester.Relationships.Apps.Data]?

        /// BetaTester.Relationships.Apps.Links
        public varlinks: BetaTester.Relationships.Apps.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BetaGroups: Codable {

        /// [BetaTester.Relationships.BetaGroups.Data]
        public vardata: [BetaTester.Relationships.BetaGroups.Data]?

        /// BetaTester.Relationships.BetaGroups.Links
        public varlinks: BetaTester.Relationships.BetaGroups.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct Builds: Codable {

        /// [BetaTester.Relationships.Builds.Data]
        public vardata: [BetaTester.Relationships.Builds.Data]?

        /// BetaTester.Relationships.Builds.Links
        public varlinks: BetaTester.Relationships.Builds.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }
}

// MARK: BetaTester.Relationships.Apps
extension BetaTester.Relationships.Apps {

    public struct Data: Codable {

        /// string (Required)
        public var`id`: String

        /// string (Required)Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: BetaTester.Relationships.BetaGroups
extension BetaTester.Relationships.BetaGroups {

    public struct Data: Codable {

        /// string (Required)
        public var`id`: String

        /// string (Required)Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: BetaTester.Relationships.Builds
extension BetaTester.Relationships.Builds {

    public struct Data: Codable {

        /// string (Required)
        public var`id`: String

        /// string (Required)Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
