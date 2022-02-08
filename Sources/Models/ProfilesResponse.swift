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
    public var data: [Profile]

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?

    /// The requested relationship data.￼
    ///  Possible types: BundleId, Device, Certificate
    public var included: [ProfileRelationship]?
}
