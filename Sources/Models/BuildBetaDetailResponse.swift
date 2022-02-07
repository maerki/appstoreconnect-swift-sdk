//
//  BuildBetaDetailResponse.swift
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
public struct BuildBetaDetailResponse: Codable {

    /// The resource data.
    public let data: BuildBetaDetail

    /// The requested relationship data.
    public let included: [Build]?

    /// Navigational links that include the self-link.
    public let links: DocumentLinks
}
