//
//  PagingInformation.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// Paging information for data responses.
public struct PagingInformation: Codable {

    /// Paging details such as the total number of resources and the per-page limit.
    public struct Paging: Codable {

        /// The total number of resources matching your request.
        public var total: Int

        /// The maximum number of resources to return per page, from 0 to 200.
        public var limit: Int
    }

    /// The paging information details.
    public var paging: PagingInformation.Paging

}
