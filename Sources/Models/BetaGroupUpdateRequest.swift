//
//  BetaGroupUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct BetaGroupUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: BetaGroupUpdateRequest.Data.Attributes?

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }

    /// The resource data.
    public vardata: BetaGroupUpdateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - name: The name for the beta group.
    ///   - publicLinkEnabled: A Boolean value that indicates whether a public link is enabled. Enabling a link allows you to invite anyone outside of your team to beta test your app. When you share this link, testers will be able to install the beta version of your app on their devices in TestFlight and share the link with others.
    ///   - publicLinkLimit: The maximum number of testers that can join this beta group using the public link. Values must be between 1 and 10,000.
    ///   - publicLinkLimitEnabled: A Boolean value that limits the number of testers who can join the beta group using the public link.
    init(id: String,
         name: String? = nil,
         publicLinkEnabled: Bool? = nil,
         publicLinkLimit: Int? = nil,
         publicLinkLimitEnabled: Bool? = nil) {
        data = .init(
            attributes: .init(
                name: name,
                publicLinkEnabled: publicLinkEnabled,
                publicLinkLimit: publicLinkLimit,
                publicLinkLimitEnabled: publicLinkLimitEnabled),
            id: id)
    }
}

// MARK: BetaGroupUpdateRequest.Data
extension BetaGroupUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The name for the beta group.
        public varname: String?

        /// A Boolean value that indicates whether a public link is enabled. Enabling a link allows you to invite anyone outside of your team to beta test your app. When you share this link, testers will be able to install the beta version of your app on their devices in TestFlight and share the link with others.
        public varpublicLinkEnabled: Bool?

        /// The maximum number of testers that can join this beta group using the public link. Values must be between 1 and 10,000.
        public varpublicLinkLimit: Int?

        /// A Boolean value that limits the number of testers who can join the beta group using the public link.
        public varpublicLinkLimitEnabled: Bool?
    }
}
