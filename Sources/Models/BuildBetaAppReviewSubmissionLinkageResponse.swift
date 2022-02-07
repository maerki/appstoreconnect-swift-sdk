//
//  BuildBetaAppReviewSubmissionLinkageResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
<<<<<<< HEAD

=======
#if os(Linux)
import FoundationNetworking
#endif
    
>>>>>>> 36fd4f9 (import foundationetworking)
/// A response containing the ID of the related resource.
public struct BuildBetaAppReviewSubmissionLinkageResponse: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String

        /// The resource type.Value: betaAppReviewSubmissions
        public private(set) var type: String = "betaAppReviewSubmissions"
    }

    /// The object types and IDs of the related resources.
    public let data: BuildBetaAppReviewSubmissionLinkageResponse.Data

    /// Navigational links including the self-link and links to the related data.
    public let links: DocumentLinks

}
