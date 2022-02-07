//
//  BetaTestersResponse.swift
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
public struct BetaTestersResponse: Codable {

    /// The resource data.
    public let data: [BetaTester]

    /// The requested relationship data.￼
    ///  Possible types: App, BetaGroup, Build
    public let included: [BetaTesterRelationship]?

    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
}
