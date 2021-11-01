//
//  DeviceStatus.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/24/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public enum DeviceStatus: String, Codable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}
