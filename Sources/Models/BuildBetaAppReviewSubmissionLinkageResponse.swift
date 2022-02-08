//
//  BuildBetaAppReviewSubmissionLinkageResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing the ID of the related resource.
public struct BuildBetaAppReviewSubmissionLinkageResponse: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaAppReviewSubmissions
        public private(set) var type: String = "betaAppReviewSubmissions"
    }

    /// The object types and IDs of the related resources.
    public var data: BuildBetaAppReviewSubmissionLinkageResponse.Data

    /// Navigational links including the self-link and links to the related data.
    public var links: DocumentLinks

}
