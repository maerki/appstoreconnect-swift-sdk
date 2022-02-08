//
//  BuildBetaNotificationCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct BuildBetaNotificationCreateRequest: Codable {

    public struct Data: Codable {

        /// The types and IDs of the related data to update.
        public var relationships: BuildBetaNotificationCreateRequest.Data.Relationships

        /// The resource type.Value: buildBetaNotifications
        public private(set) var type: String = "buildBetaNotifications"
    }

    /// The resource data.
    public var data: BuildBetaNotificationCreateRequest.Data

    /// - Parameters:
    ///   - buildId: The opaque resource ID that uniquely identifies the resource.
    init(buildId: String) {
        data = .init(relationships: .init(build: .init(data: .init(id: buildId))))
    }

}

// MARK: BuildBetaNotificationCreateRequest.Data
extension BuildBetaNotificationCreateRequest.Data {

    public struct Relationships: Codable {

        /// BuildBetaNotificationCreateRequest.Data.Relationships.Build (Required)
        public var build: BuildBetaNotificationCreateRequest.Data.Relationships.Build
    }
}

// MARK: BuildBetaNotificationCreateRequest.Data.Relationships
extension BuildBetaNotificationCreateRequest.Data.Relationships {

    public struct Build: Codable {

        /// BuildBetaNotificationCreateRequest.Data.Relationships.Build.Data (Required)
        public var data: BuildBetaNotificationCreateRequest.Data.Relationships.Build.Data
    }
}

// MARK: BuildBetaNotificationCreateRequest.Data.Relationships.Build
extension BuildBetaNotificationCreateRequest.Data.Relationships.Build {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The types and IDs of the related data to update.Value: builds
        public private(set) var type: String = "builds"
    }
}
