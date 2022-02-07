//
//  ProfileResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a list of resources.
public struct ProfilesResponse: Codable {

    /// The resource data.
    public vardata: [Profile]

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks

    /// Paging information.
    public varmeta: PagingInformation?

    /// The requested relationship data.￼
    ///  Possible types: BundleId, Device, Certificate
    public varincluded: [ProfileRelationship]?
}
