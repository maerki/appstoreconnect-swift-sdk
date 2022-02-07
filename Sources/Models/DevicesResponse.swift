//
//  DevicesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/24/19.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// A response containing a list of resources.
public struct DevicesResponse: Codable {

    /// The paging information details.
    public vardata: [Device]

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks

    /// Paging information.
    public varmeta: PagingInformation?
}
