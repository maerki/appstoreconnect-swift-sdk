//
//  BetaGroupBetaTestersLinkagesResponse.swift
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
/// A response containing a list of related resource IDs.
public struct BetaGroupBetaTestersLinkagesResponse: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public let `id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }

    /// The object types and IDs of the related resources.
    public let data: [BetaGroupBetaTestersLinkagesResponse.Data]

    /// Navigational links including the self-link and links to the related data.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
}
