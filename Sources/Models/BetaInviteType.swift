//
//  BetaInviteType.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public enum BetaInviteType: String, Codable {
    case email = "EMAIL"
    case publicLink = "PUBLIC_LINK"
}
