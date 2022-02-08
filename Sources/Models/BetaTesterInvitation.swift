//
//  BetaTesterInvitation.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaTesterInvitation: Codable {

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// The resource type.Value: betaTesterInvitations
    public private(set) var type: String = "betaTesterInvitations"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<BetaTesterInvitationResponse>
}
