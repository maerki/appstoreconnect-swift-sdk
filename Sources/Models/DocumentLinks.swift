//
//  DocumentLinks.swift
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
/// Self-links to documents that can contain information for one or more resources.
public struct DocumentLinks: Codable {

    /// The link that produced the current document.
    public let `self`: URL
}
