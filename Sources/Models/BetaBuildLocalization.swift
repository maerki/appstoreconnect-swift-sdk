//
//  BetaBuildLocalization.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaBuildLocalization: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The specified locale. Refer to Table 1 for possible values.
        public varlocale: String?

        /// A field that describes changes and additions to a build and indicates features you would like your users to test.
        public varwhatsNew: String?
    }

    public struct Relationships: Codable {

        /// BetaBuildLocalization.Relationships.Build
        public varbuild: BetaBuildLocalization.Relationships.Build?
    }

    /// The resource's attributes.
    public varattributes: BetaBuildLocalization.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BetaBuildLocalization.Relationships?

    /// The resource type.Value: betaBuildLocalizations
    public private(set) var type: String = "betaBuildLocalizations"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BetaBuildLocalizationResponse>
}

// MARK: BetaBuildLocalization.Relationships
extension BetaBuildLocalization.Relationships {

    public struct Build: Codable {

        /// BetaBuildLocalization.Relationships.Build.Data
        public vardata: BetaBuildLocalization.Relationships.Build.Data?

        /// BetaBuildLocalization.Relationships.Build.Links
        public varlinks: BetaBuildLocalization.Relationships.Build.Links?
    }
}

// MARK: BetaBuildLocalization.Relationships.Build
extension BetaBuildLocalization.Relationships.Build {

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
