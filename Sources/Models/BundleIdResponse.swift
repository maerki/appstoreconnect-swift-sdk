//
//  BundleIdResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Rui Costa on 07/12/2019.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a single resource.
public struct BundleIdResponse: Codable {

    /// The resource data.
    public var data: BundleId

    /// Navigational links including the self-link and links to the related data.
    public var links: DocumentLinks

    /// The requested relationship data.￼
    ///  Possible types: Profile, BundleIdCapability
    public var included: [BundleIdRelationship]?
}
