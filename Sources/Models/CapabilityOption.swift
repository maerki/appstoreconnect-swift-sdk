//
//  CapabilityOption.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/22/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct CapabilityOption: Codable {
    public var description: String?
    public var enabled: Bool?
    public var enabledByDefault: Bool?
    public var key: CapabilityOptionKey?
    public var name: String?
    public var supportsWildcard: Bool?

    public init(
        description: String? = nil,
        enabled: Bool? = nil,
        enabledByDefault: Bool? = nil,
        key: CapabilityOptionKey? = nil,
        name: String? = nil,
        supportsWildcard: Bool? = nil
    ) {
        self.description = description
        self.enabled = enabled
        self.enabledByDefault = enabledByDefault
        self.key = key
        self.name = name
        self.supportsWildcard = supportsWildcard
    }
}
