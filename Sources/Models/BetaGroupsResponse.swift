//
//  BetaGroupsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
<<<<<<< HEAD

=======
#if os(Linux)
import FoundationNetworking
#endif
    
>>>>>>> 36fd4f9 (import foundationetworking)
/// A response containing a list of resources.
public struct BetaGroupsResponse: Codable {

    /// The resource data.
    public let data: [BetaGroup]

    /// Relationship data to include in the response.￼
    ///  Possible types: App, Build, BetaTester
    public let included: [BetaGroupRelationship]?

    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
}
