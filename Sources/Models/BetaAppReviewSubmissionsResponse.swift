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
    public vardata: [BetaAppReviewSubmission]

    /// The requested relationship data.
    public varincluded: [Build]?

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks

    /// Paging information.
    public varmeta: PagingInformation?
}
