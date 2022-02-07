//
//  BetaBuildLocalizationBuildLinkageResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct BetaBuildLocalizationBuildLinkageResponse: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    /// The resource data.
    public vardata: BetaBuildLocalizationBuildLinkageResponse.Data

    /// Navigational links that include the self-link.
    public varlinks: DocumentLinks
}
