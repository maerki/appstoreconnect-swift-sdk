//
//  BetaLicenseAgreementUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct BetaLicenseAgreementUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: BetaLicenseAgreementUpdateRequest.Data.Attributes?

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaLicenseAgreements
        public private(set) var type: String = "betaLicenseAgreements"
    }

    /// The resource data.
    public vardata: BetaLicenseAgreementUpdateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - agreementText: The license agreement text for your beta app that displays to users.
    init(id: String, agreementText: String? = nil) {
        data = .init(attributes: .init(agreementText: agreementText), id: id)
    }
}

// MARK: BetaLicenseAgreementUpdateRequest.Data
extension BetaLicenseAgreementUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The license agreement text for your beta app that displays to users.
        public varagreementText: String?
    }
}
