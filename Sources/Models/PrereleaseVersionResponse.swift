//
//  PrereleaseVersionResponse.swift
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
/// A response containing a single resource.
public struct PrereleaseVersionResponse: Codable {

    /// The resource data.
    public let data: PrereleaseVersion

    /// The requested relationship data.￼
    ///  Possible types: Build, App
    public let included: [PreReleaseVersionRelationship]?

    /// Navigational links that include the self-link.
    public let links: DocumentLinks
}
