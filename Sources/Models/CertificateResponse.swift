//
//  CertificateResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/15/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a single resource.
public struct CertificateResponse: Codable {

    /// The resource data.
    public vardata: Certificate

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks
}
