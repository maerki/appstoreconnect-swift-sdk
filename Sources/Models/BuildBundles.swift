//
//  BuildBundles.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Billy on 11/15/21.
//

import Foundation

// The data structure that represents Build Bundles resource.
public struct BuildBundles: Codable {

    // The attributes that describe a Build Bundles resource.
    public struct Attributes: Codable {

        // The bundle ID of the build bundle.
        public var bundleId: String

        // The type of the build bundle.
        public var bundleType: String

        // True if build bundle contains symbols
        public var includesSymbols: Bool

        // URL to the dSYM if available
        public var dSYMUrl: URL?
    }

    // The opaque resource ID that uniquely identifies a Build
    public var id: String

    // The attributes that describe the Build Bundles resource.
    public var attributes: Attributes
}
