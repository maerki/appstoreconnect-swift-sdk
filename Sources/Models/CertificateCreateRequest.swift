//
//  CertificateCreateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Patrick Balestra on 12/15/19.
//

/// A request containing a single resource.
public struct CertificateCreateRequest: Encodable {

    public struct Data: Encodable {

        /// The resource's attributes.
        public var attributes: CertificateCreateRequest.Data.Attributes?

        /// The resource type.
        public private(set) var type: String = "certificates"
    }

    /// The resource data.
    public var data: Data
}

// MARK: CertificateCreateRequest.Data
extension CertificateCreateRequest.Data {

    public struct Attributes: Encodable {
        public var certificateType: CertificateType
        public var csrContent: String
    }
}
