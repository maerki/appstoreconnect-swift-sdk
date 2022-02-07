//
//  BundleIdBundleIdCapabilitiesLinkagesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/23/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a list of related resource IDs.
public struct BundleIdBundleIdCapabilitiesLinkagesResponse: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: bundleIdCapabilities
        public private(set) var type: String = "bundleIdCapabilities"
    }

    /// The object types and IDs of the related resources.
    public vardata: [BundleIdBundleIdCapabilitiesLinkagesResponse.Data]

    /// Navigational links including the self-link and links to the related data.
    public varlinks: DocumentLinks

    /// Paging information.
    public varmeta: PagingInformation?
}
