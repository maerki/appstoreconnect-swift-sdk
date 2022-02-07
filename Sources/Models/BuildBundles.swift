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
        public varbundleId: String

        // The type of the build bundle.
        public varbundleType: String

        // True if build bundle contains symbols
        public varincludesSymbols: Bool

        // URL to the dSYM if available
        public vardSYMUrl: URL?
    }

    // The opaque resource ID that uniquely identifies a Build
    public varid: String

    // The attributes that describe the Build Bundles resource.
    public varattributes: Attributes
}
