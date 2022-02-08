//
//  AppStoreVersionLocalizationResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Kirill Budevich on 1/27/21.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionLocalizationResponse: Codable {
    /// The resource data.
    public var data: AppStoreVersionLocalization

    /// The requested relationship data.￼
    ///  Possible types: AgeRatingDeclaration, AppStoreVersionLocalization, Build, AppStoreVersionPhasedRelease, RoutingAppCoverage, AppStoreReviewDetail, AppStoreVersionSubmission, IdfaDeclaration
    public var included: [AppStoreVersionRelationship]?

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks
}
