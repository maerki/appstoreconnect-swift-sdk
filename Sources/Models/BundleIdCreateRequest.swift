//
//  BundleIdCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Rui Costa on 07/12/2019.
//

/// A request containing a single resource.
public struct BundleIdCreateRequest: Encodable {

    public struct Data: Encodable {

        /// The resource's attributes.
        public varattributes: BundleIdCreateRequest.Data.Attributes?

        /// The resource type.
        public private(set) var type: String = "bundleIds"
    }

    /// The resource data.
    public vardata: Data
}

// MARK: BundleIdCreateRequest.Data
extension BundleIdCreateRequest.Data {

    public struct Attributes: Encodable {
        public varidentifier: String
        public varname: String
        public varplatform: BundleIdPlatform
        public varseedId: String?
    }
}
