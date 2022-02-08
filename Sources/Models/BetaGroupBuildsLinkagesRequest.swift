//
//  BetaGroupBuildsLinkagesRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing the IDs of related resources.
public struct BetaGroupBuildsLinkagesRequest: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    /// The types and IDs of related resources.
    public var data: [BetaGroupBuildsLinkagesRequest.Data]

    /// - Parameters:
    ///   - buildIds: Array of opaque resource ID that uniquely identifies the resources.
    init(_ buildIds: [String]) {
        data = buildIds.map({ Data(id: $0) })
    }
}
