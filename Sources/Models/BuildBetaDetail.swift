//
//  BuildBetaDetail.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BuildBetaDetail: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A Boolean value that enables you to send test invitations to users automatically when the build is available to external groups.
        public varautoNotifyEnabled: Bool?

        /// A state that indicates if the build is available for external testing.
        public varexternalBuildState: ExternalBetaState?

        /// A state that indicates if the build is available for internal testing.
        public varinternalBuildState: InternalBetaState?
    }

    public struct Relationships: Codable {

        /// BuildBetaDetail.Relationships.Build
        public varbuild: BuildBetaDetail.Relationships.Build?
    }

    /// The resource's attributes.
    public varattributes: BuildBetaDetail.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BuildBetaDetail.Relationships?

    /// The resource type.Value: buildBetaDetails
    public private(set) var type: String = "buildBetaDetails"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BuildBetaDetailResponse>

}

// MARK: BuildBetaDetail.Relationships
extension BuildBetaDetail.Relationships {

    public struct Build: Codable {

        /// BuildBetaDetail.Relationships.Build.Data
        public vardata: BuildBetaDetail.Relationships.Build.Data?

        /// BuildBetaDetail.Relationships.Build.Links
        public varlinks: BuildBetaDetail.Relationships.Build.Links?
    }
}

// MARK: BuildBetaDetail.Relationships.Build
extension BuildBetaDetail.Relationships.Build {

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
