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

/// A response containing a single resource.
public struct ProfileResponse: Codable {

    /// The resource data.
    public var data: Profile

    /// Navigational links that include the self-link.
    public var links: DocumentLinks

    /// The requested relationship data.￼
    ///  Possible types: BundleId, Device, Certificate
    public var included: [ProfileRelationship]?
}
