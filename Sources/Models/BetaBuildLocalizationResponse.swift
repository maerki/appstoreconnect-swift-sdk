//
//  BetaBuildLocalizationResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct BetaBuildLocalizationResponse: Codable {

    /// The resource data.
    public vardata: BetaBuildLocalization

    /// The requested relationship data.
    public varincluded: [Build]?

    /// Navigational links that include the self-link.
    public varlinks: DocumentLinks
}
