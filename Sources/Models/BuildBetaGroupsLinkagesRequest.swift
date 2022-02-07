//
//  BuildBetaGroupsLinkagesRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing the IDs of related resources.
public struct BuildBetaGroupsLinkagesRequest: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }

    /// The types and IDs of related resources.
    public vardata: [BuildBetaGroupsLinkagesRequest.Data]

    /// - Parameters:
    ///   - betaGroupIds: Array of opaque resource ID that uniquely identifies the resources.
    init(_ betaGroupIds: [String]) {
        data = betaGroupIds.map({ Data(id: $0) })
    }
}
