//
//  BetaGroupsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a list of resources.
public struct BetaGroupsResponse: Codable {

    /// The resource data.
    public var data: [BetaGroup]

    /// Relationship data to include in the response.￼
    ///  Possible types: App, Build, BetaTester
    public var included: [BetaGroupRelationship]?

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
