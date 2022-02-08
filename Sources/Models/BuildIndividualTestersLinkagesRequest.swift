//
//  BuildIndividualTestersLinkagesRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing the IDs of related resources.
public struct BuildIndividualTestersLinkagesRequest: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }

    /// The types and IDs of related resources.
    public var data: [BuildIndividualTestersLinkagesRequest.Data]

    /// - Parameters:
    ///   - betaTesterIds: Array of opaque resource ID that uniquely identifies the resources.
    init(_ betaTesterIds: [String]) {
        data = betaTesterIds.map({ Data(id: $0) })
    }
}
