//
//  BuildBundleFileSizesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Billy on 11/12/21.
//

import Foundation

/// A response containing a list of build bundle file sizes.
public struct BuildBundleFileSizesResponse: Codable {

    /// The resource data.
    public var data: [BuildBundleFileSize]

    /// Navigational links that include the self-link.
    public var links: PagedDocumentLinks

    /// Paging information.
    public var meta: PagingInformation?
}
