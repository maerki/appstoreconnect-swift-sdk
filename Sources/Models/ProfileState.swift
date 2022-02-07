//
//  ProfileState.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// Strings that represent a profile state.
public enum ProfileState: String, Codable {
    case active = "ACTIVE"
    case invalid = "INVALID"
    case expired = "EXPIRED"
}
