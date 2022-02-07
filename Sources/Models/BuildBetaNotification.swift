//
//  BuildBetaNotification.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BuildBetaNotification: Codable {

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BuildBetaNotificationResponse>

    /// The resource type.Value: buildBetaNotifications
    public private(set) var type: String = "buildBetaNotifications"
}
