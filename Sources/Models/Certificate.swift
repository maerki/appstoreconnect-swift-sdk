//
//  Certificate.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/14/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct Certificate: Codable {

    /// Attributes that describe a certificate.
    public struct Attributes: Codable {
        public var certificateContent: String?
        public var displayName: String?
        public var expirationDate: Date?
        public var name: String?
        public var platform: BundleIdPlatform?
        public var serialNumber: String?
        public var certificateType: CertificateType?
    }

    /// The resource's attributes.
    public var attributes: Certificate.Attributes

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// The resource type.
    public private(set) var type: String = "certificates"

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks
}
