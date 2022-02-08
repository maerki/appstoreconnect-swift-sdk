//
//  CertificatesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/14/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a list of resources.
public struct CertificatesResponse: Codable {

    /// The paging information details.
    public var data: [Certificate]

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
