//
//  AppResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
    
/// A response containing a single resource.
public struct AppResponse: Codable {

    /// The resource data.
    public let data: App

    /// The requested relationship data.￼
    /// Possible types: BetaGroup, PrereleaseVersion, BetaAppLocalization, Build, BetaLicenseAgreement, BetaAppReviewDetail
    public let included: [AppRelationship]?

    /// Navigational links that include the self-link.
    public let links: DocumentLinks
}
