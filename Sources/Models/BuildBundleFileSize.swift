//
//  BuildBundleFileSize.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Billy on 11/12/21.
//

import Foundation

/// The data structure that represents a Build Bundle File Sizes resource.
public struct BuildBundleFileSize: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A string that identifies the Apple device model.
        public vardeviceModel: String?

        /// An integer value that represents the download size of the build bundle in bytes.
        public vardownloadBytes: Int?

        /// An integer value that represents the installation size of the build bundle in bytes.
        public varinstallBytes: Int?

        /// A string that identifies the OS version supported by the app or App Clip.
        public varosVersion: String?
    }

    /// The opaque resource ID that uniquely identifies a Build
    public varid: String

    /// The attributes that describe the Build Bundle File Sizes resource.
    public varattributes: BuildBundleFileSize.Attributes?

    /// The resource type. Value buildBundleFileSizes
    public vartype: String = "buildBundleFileSizes"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BuildBundleFileSizesResponse>
}
