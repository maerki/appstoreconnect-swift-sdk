//
//  BetaAppReviewSubmission.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaAppReviewSubmission: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A state that indicates the current status of the beta app review submission.
        public varbetaReviewState: BetaReviewState?
    }

    public struct Relationships: Codable {

        /// BetaAppReviewSubmission.Relationships.Build
        public varbuild: BetaAppReviewSubmission.Relationships.Build?
    }

    /// The resource's attributes.
    public varattributes: BetaAppReviewSubmission.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BetaAppReviewSubmissionResponse>

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BetaAppReviewSubmission.Relationships?

    /// The resource type.Value: betaAppReviewSubmissions
    public private(set) var type: String = "betaAppReviewSubmissions"
}

// MARK: BetaAppReviewSubmission.Relationships
extension BetaAppReviewSubmission.Relationships {

    public struct Build: Codable {

        /// BetaAppReviewSubmission.Relationships.Build.Data
        public vardata: BetaAppReviewSubmission.Relationships.Build.Data?

        /// BetaAppReviewSubmission.Relationships.Build.Links
        public varlinks: BetaAppReviewSubmission.Relationships.Build.Links?
    }
}

// MARK: BetaAppReviewSubmission.Relationships.Build
extension BetaAppReviewSubmission.Relationships.Build {

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
