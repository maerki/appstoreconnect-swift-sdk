//
//  PrereleaseVersion.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct PrereleaseVersion: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The platform of the prerelease version of your app.
        public var platform: Platform?

        /// The version number of the prerelease version of your app.
        public var version: String?
    }

    public struct Relationships: Codable {

        /// PrereleaseVersion.Relationships.App
        public var app: PrereleaseVersion.Relationships.App?

        /// PrereleaseVersion.Relationships.Builds
        public var builds: PrereleaseVersion.Relationships.Builds?
    }

    /// The resource's attributes.
    public var attributes: PrereleaseVersion.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<PrereleaseVersionResponse>

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: PrereleaseVersion.Relationships?

    /// The resource type.Value: preReleaseVersions
    public private(set) var type: String = "preReleaseVersions"
}

// MARK: PrereleaseVersion.Relationships
extension PrereleaseVersion.Relationships {

    public struct App: Codable {

        /// PrereleaseVersion.Relationships.App.Data
        public var data: PrereleaseVersion.Relationships.App.Data?

        /// PrereleaseVersion.Relationships.App.Links
        public var links: PrereleaseVersion.Relationships.App.Links?
    }

    public struct Builds: Codable {

        /// [PrereleaseVersion.Relationships.Builds.Data]
        public var data: [PrereleaseVersion.Relationships.Builds.Data]?

        /// PrereleaseVersion.Relationships.Builds.Links
        public var links: PrereleaseVersion.Relationships.Builds.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }
}

// MARK: PrereleaseVersion.Relationships.App
extension PrereleaseVersion.Relationships.App {

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

// MARK: PrereleaseVersion.Relationships.Builds
extension PrereleaseVersion.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
