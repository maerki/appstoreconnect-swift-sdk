//
//  ProfileCertificatesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Kristof Van Landschoot on 03/14/20.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a list of related resource IDs.
public struct ProfileCertificatesResponse: Codable {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: devices
        public private(set) var type: String = "certificates"
    }

    /// The object types and IDs of the related resources.
    public var data: [ProfileCertificatesResponse.Data]

    /// Navigational links including the self-link and links to the related data.
    public var links: DocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
