//
//  BetaGroup.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaGroup: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A Boolean value that indicates whether the group is internal. Only existing users of App Store Connect may be added for internal beta testing.
        public varisInternalGroup: Bool?

        /// The name for the beta group.
        public varname: String?

        /// The URL of the public link provided to your app's beta testers.
        public varpublicLink: String?

        /// A Boolean value that indicates whether a public link is enabled. Enabling a link allows you to invite anyone outside of your team to beta test your app. When you share this link, testers will be able to install the beta version of your app on their devices in TestFlight and share the link with others.
        public varpublicLinkEnabled: Bool?

        /// The ID as part of the URL of the public link.
        public varpublicLinkId: String?

        /// The maximum number of testers that can join this beta group using the public link. Values must be between 1 and 10,000.
        public varpublicLinkLimit: Int?

        /// A Boolean value that limits the number of testers who can join the beta group using the public link.
        public varpublicLinkLimitEnabled: Bool?

        /// The creation date of the beta group.
        public varcreatedDate: Date?
    }

    public struct Relationships: Codable {

        /// BetaGroup.Relationships.App
        public varapp: BetaGroup.Relationships.App?

        /// BetaGroup.Relationships.BetaTesters
        public varbetaTesters: BetaGroup.Relationships.BetaTesters?

        /// BetaGroup.Relationships.Builds
        public varbuilds: BetaGroup.Relationships.Builds?
    }

    /// The resource's attributes.
    public varattributes: BetaGroup.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BetaGroup.Relationships?

    /// The resource type.Value: betaGroups
    public private(set) var type: String = "betaGroups"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BetaGroupResponse>
}

// MARK: BetaGroup.Relationships
extension BetaGroup.Relationships {

    public struct App: Codable {

        /// BetaGroup.Relationships.App.Data
        public vardata: BetaGroup.Relationships.App.Data?

        /// BetaGroup.Relationships.App.Links
        public varlinks: BetaGroup.Relationships.App.Links?
    }

    public struct BetaTesters: Codable {

        /// [BetaGroup.Relationships.BetaTesters.Data]
        public vardata: [BetaGroup.Relationships.BetaTesters.Data]?

        /// BetaGroup.Relationships.BetaTesters.Links
        public varlinks: BetaGroup.Relationships.BetaTesters.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct Builds: Codable {

        /// [BetaGroup.Relationships.Builds.Data]
        public vardata: [BetaGroup.Relationships.Builds.Data]?

        /// BetaGroup.Relationships.Builds.Links
        public varlinks: BetaGroup.Relationships.Builds.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }
}

// MARK: BetaGroup.Relationships.App
extension BetaGroup.Relationships.App {

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

// MARK: BetaGroup.Relationships.BetaTesters
extension BetaGroup.Relationships.BetaTesters {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: BetaGroup.Relationships.Builds
extension BetaGroup.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
