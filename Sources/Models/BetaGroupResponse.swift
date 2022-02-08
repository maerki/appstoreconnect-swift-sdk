//
//  BetaGroupResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct BetaGroupResponse: Codable {

    /// The resource data.
    public var data: BetaGroup

    /// The requested relationship data.￼
    ///  Possible types: App, Build, BetaTester
    public var included: [BetaGroupRelationship]?

    /// Navigational links that include the self-link.
    public var links: DocumentLinks
}
