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
    public vardata: [BundleId]

    /// The requested relationship data.
    public varincluded: [BundleIdRelationship]?

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks

    /// Paging information.
    public varmeta: PagingInformation?
}
