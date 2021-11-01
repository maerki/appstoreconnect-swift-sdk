//
//  AppInfosResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Morten Bjerg Gregersen on 23/08/2020.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppInfosResponse: Codable {
    /// The resource data.
    public let data: [AppInfo]

    /// The requested relationship data.￼
    ///  Possible types: AppInfoLocalization, AppCategory
    public let included: [AppInfoRelationship]?

    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
}
