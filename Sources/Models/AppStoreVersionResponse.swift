//
//  AppStoreVersionResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Morten Bjerg Gregersen on 24/08/2020.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionResponse: Codable {
    /// The resource data.
    public vardata: AppStoreVersion

    /// The requested relationship data.￼
    ///  Possible types: AgeRatingDeclaration, AppStoreVersionLocalization, Build, AppStoreVersionPhasedRelease, RoutingAppCoverage, AppStoreReviewDetail, AppStoreVersionSubmission, IdfaDeclaration
    public varincluded: [AppStoreVersionRelationship]?

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks
}
