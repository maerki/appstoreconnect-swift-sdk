//
//  BuildBetaDetailUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource
public struct BuildBetaDetailUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: BuildBetaDetailUpdateRequest.Data.Attributes?

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: buildBetaDetails
        public private(set) var type: String = "buildBetaDetails"
    }

    /// The resource data.
    public vardata: BuildBetaDetailUpdateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - autoNotifyEnabled: A Boolean value that enables you to send test invitations to users automatically when the build is available to external groups.
    init(id: String, autoNotifyEnabled: Bool? = nil) {
        data = .init(attributes: .init(autoNotifyEnabled: autoNotifyEnabled), id: id)
    }
}

// MARK: BuildBetaDetailUpdateRequest.Data
extension BuildBetaDetailUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A Boolean value that enables you to send test invitations to users automatically when the build is available to external groups.
        public varautoNotifyEnabled: Bool?
    }
}
