//
//  BundleIdsResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a list of resources.
public struct BundleIdsResponse: Codable {

    /// The resource data.
    public var data: [BundleId]

    /// The requested relationship data.
    public var included: [BundleIdRelationship]?

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
