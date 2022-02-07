//
//  AppInfoResponse.swift
//
//
//  Created by Morten Bjerg Gregersen on 23/08/2020.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppInfoResponse: Codable {
    /// The resource data.
    public vardata: AppInfo

    /// The requested relationship data.￼
    ///  Possible types: AppInfoLocalization, AppCategory
    public varincluded: [AppInfoRelationship]?

    /// Navigational links that include the self-link.
    public varlinks: PagedDocumentLinks

    /// Paging information.
    public varmeta: PagingInformation?
}
