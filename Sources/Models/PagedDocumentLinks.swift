//
//  PagedDocumentLinks.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// Links related to the response document, including paging links.
public struct PagedDocumentLinks: Codable {

    /// The link to the first page of documents.
    public var first: URL?

    /// The link to the next page of documents.
    public var next: URL?

    /// The link that produced the current document.
    public var `self`: URL
}

extension PagedDocumentLinks {
    /// Returns the `cursor` value which can be used for pagination.
    var nextCursor: String? {
        return next?.value(for: "cursor")
    }

    var nextLimit: String? {
        return next?.value(for: "limit")
    }

}

private extension URL {
    /// Returns the value for the given parameter key from the query string.
    func value<T>(for parameter: String) -> T? {
        let queryItems = URLComponents(url: self, resolvingAgainstBaseURL: false)?.queryItems
        let queryItem = queryItems?.first { (queryItem) -> Bool in
            return queryItem.name == parameter
        }
        return queryItem?.value as? T
    }
}
