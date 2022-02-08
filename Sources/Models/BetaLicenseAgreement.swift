//
//  BetaLicenseAgreement.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaLicenseAgreement: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The license agreement text for your beta app that displays to users.
        public var agreementText: String?
    }

    public struct Relationships: Codable {

        /// BetaLicenseAgreement.Relationships.App
        public var app: BetaLicenseAgreement.Relationships.App?
    }

    /// The resource's attributes.
    public var attributes: BetaLicenseAgreement.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<BetaLicenseAgreementResponse>

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: BetaLicenseAgreement.Relationships?

    /// The resource type.Value: betaLicenseAgreements
    public private(set) var type: String = "betaLicenseAgreements"

}

// MARK: BetaLicenseAgreement.Relationships
extension BetaLicenseAgreement.Relationships {

    public struct App: Codable {

        /// BetaLicenseAgreement.Relationships.App.Data
        public var data: BetaLicenseAgreement.Relationships.App.Data?

        /// BetaLicenseAgreement.Relationships.App.Links
        public var links: BetaLicenseAgreement.Relationships.App.Links?
    }
}

// MARK: BetaLicenseAgreement.Relationships.App
extension BetaLicenseAgreement.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
