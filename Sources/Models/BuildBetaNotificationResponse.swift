//
//  BuildBetaNotificationResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A response containing a single resource.
public struct BuildBetaNotificationResponse: Codable {

    /// The resource data.
    public var data: BuildBetaNotification

    /// Navigational links that include the self-link.
    public var links: DocumentLinks
}
