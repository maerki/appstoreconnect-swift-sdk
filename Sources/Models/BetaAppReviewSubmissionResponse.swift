//
//  BetaAppReviewSubmissionResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct BetaAppReviewSubmissionResponse: Codable {

    /// The resource data.
    public let data: BetaAppReviewSubmission

    /// The requested relationship data.
    public let included: [Build]?

    /// Navigational links that include the self-link.
    public let links: DocumentLinks
}
