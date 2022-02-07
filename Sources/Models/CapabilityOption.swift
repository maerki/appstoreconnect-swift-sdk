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
    public vardescription: String?
    public varenabled: Bool?
    public varenabledByDefault: Bool?
    public varkey: CapabilityOptionKey?
    public varname: String?
    public varsupportsWildcard: Bool?

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
