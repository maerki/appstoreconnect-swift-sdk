//
//  BetaTestersResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a list of resources.
public struct BetaTestersResponse: Codable {

    /// The resource data.
    public var data: [BetaTester]

    /// The requested relationship data.￼
    ///  Possible types: App, BetaGroup, Build
    public var included: [BetaTesterRelationship]?

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
