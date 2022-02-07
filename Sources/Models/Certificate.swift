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
        public varcertificateContent: String?
        public vardisplayName: String?
        public varexpirationDate: Date?
        public varname: String?
        public varplatform: BundleIdPlatform?
        public varserialNumber: String?
        public varcertificateType: CertificateType?
    }

    /// The resource's attributes.
    public varattributes: Certificate.Attributes

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// The resource type.
    public private(set) var type: String = "certificates"

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks
}
