//
//  BetaAppLocalization.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct BetaAppLocalization: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A description of your app that highlights features and functionality.
        public vardescription: String?

        /// An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
        public varfeedbackEmail: String?

        /// The specified locale. Refer to Table 1 for possible values.
        public varlocale: String?

        /// A URL with information about your app. This URL is visible to testers in the TestFlight app.
        public varmarketingUrl: String?

        /// A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
        public varprivacyPolicyUrl: String?

        /// Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
        public vartvOsPrivacyPolicy: String?
    }

    public struct Relationships: Codable {

        /// BetaAppLocalization.Relationships.App
        public varapp: BetaAppLocalization.Relationships.App?
    }

    /// The resource's attributes.
    public varattributes: BetaAppLocalization.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: BetaAppLocalization.Relationships?

    /// The resource type.Value: betaAppLocalizations
    public private(set) var type: String = "betaAppLocalizations"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BetaAppLocalizationResponse>
}

// MARK: BetaAppLocalization.Relationships
extension BetaAppLocalization.Relationships {

    public struct App: Codable {

        /// BetaAppLocalization.Relationships.App.Data
        public vardata: BetaAppLocalization.Relationships.App.Data?

        /// BetaAppLocalization.Relationships.App.Links
        public varlinks: BetaAppLocalization.Relationships.App.Links?
    }
}

// MARK: BetaAppLocalization.Relationships.App
extension BetaAppLocalization.Relationships.App {

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
