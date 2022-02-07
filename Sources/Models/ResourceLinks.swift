//
//  ResourceLinks.swift
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
/// Self-links to requested resources.
public struct ResourceLinks<T: Decodable>: Codable {

    /// The link to the resource.
    public let `self`: URL
}
