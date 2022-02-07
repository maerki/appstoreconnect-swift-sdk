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
        public varagreementText: String?
    }

    public struct Relationships: Codable {

        /// BetaLicenseAgreement.Relationships.App
        public varapp: BetaLicenseAgreement.Relationships.App?
    }

    /// The resource's attributes.
    public varattributes: BetaLicenseAgreement.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BetaLicenseAgreementResponse>

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BetaLicenseAgreement.Relationships?

    /// The resource type.Value: betaLicenseAgreements
    public private(set) var type: String = "betaLicenseAgreements"

}

// MARK: BetaLicenseAgreement.Relationships
extension BetaLicenseAgreement.Relationships {

    public struct App: Codable {

        /// BetaLicenseAgreement.Relationships.App.Data
        public vardata: BetaLicenseAgreement.Relationships.App.Data?

        /// BetaLicenseAgreement.Relationships.App.Links
        public varlinks: BetaLicenseAgreement.Relationships.App.Links?
    }
}

// MARK: BetaLicenseAgreement.Relationships.App
extension BetaLicenseAgreement.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
