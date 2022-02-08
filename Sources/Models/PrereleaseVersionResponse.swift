//
//  PrereleaseVersionResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct PrereleaseVersionResponse: Codable {

    /// The resource data.
    public var data: PrereleaseVersion

    /// The requested relationship data.￼
    ///  Possible types: Build, App
    public var included: [PreReleaseVersionRelationship]?

    /// Navigational links that include the self-link.
    public var links: DocumentLinks
}
