//
//  BetaTesterAppsLinkagesRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing the IDs of related resources.
public struct BetaTesterAppsLinkagesRequest: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    /// The types and IDs of related resources.
    public var data: [BetaTesterAppsLinkagesRequest.Data]

    /// - Parameters:
    ///   - appIds: Array of opaque resource ID that uniquely identifies the resources.
    init(_ appIds: [String]) {
        data = appIds.map({ Data(id: $0) })
    }
}
