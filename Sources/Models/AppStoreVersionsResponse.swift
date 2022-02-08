//
//  AppStoreVersionsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Morten Bjerg Gregersen on 24/08/2020.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionsResponse: Codable {
    /// The resource data.
    public var data: [AppStoreVersion]

    /// The requested relationship data.￼
    ///  Possible types: AgeRatingDeclaration, AppStoreVersionLocalization, Build, AppStoreVersionPhasedRelease, RoutingAppCoverage, AppStoreReviewDetail, AppStoreVersionSubmission, IdfaDeclaration
    public var included: [AppStoreVersionRelationship]?

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
