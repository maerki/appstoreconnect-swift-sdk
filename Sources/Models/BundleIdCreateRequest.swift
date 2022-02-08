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
        public var attributes: BundleIdCreateRequest.Data.Attributes?

        /// The resource type.
        public private(set) var type: String = "bundleIds"
    }

    /// The resource data.
    public var data: Data
}

// MARK: BundleIdCreateRequest.Data
extension BundleIdCreateRequest.Data {

    public struct Attributes: Encodable {
        public var identifier: String
        public var name: String
        public var platform: BundleIdPlatform
        public var seedId: String?
    }
}
