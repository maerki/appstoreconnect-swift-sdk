//
//  BetaAppReviewSubmissionsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a list of resources.
public struct BetaAppReviewSubmissionsResponse: Codable {

    /// The resource data.
    public var data: [BetaAppReviewSubmission]

    /// The requested relationship data.
    public var included: [Build]?

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
