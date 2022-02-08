//
//  ResourceLinks.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// Self-links to requested resources.
public struct ResourceLinks<T: Decodable>: Codable {

    /// The link to the resource.
    public var `self`: URL
}
