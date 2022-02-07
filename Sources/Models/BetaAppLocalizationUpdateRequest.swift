//
//  BetaAppLocalizationUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct BetaAppLocalizationUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public varattributes: BetaAppLocalizationUpdateRequest.Data.Attributes?

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaAppLocalizations
        public private(set) var type: String = "betaAppLocalizations"
    }

    /// The resource data.
    public vardata: BetaAppLocalizationUpdateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - description: A description of your app that highlights features and functionality.
    ///   - feedbackEmail: An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
    ///   - marketingUrl: A URL with information about your app. This URL is visible to testers in the TestFlight app
    ///   - privacyPolicyUrl: A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
    ///   - tvOsPrivacyPolicy: Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
    init(id: String,
         description: String? = nil,
         feedbackEmail: String? = nil,
         marketingUrl: String? = nil,
         privacyPolicyUrl: String? = nil,
         tvOsPrivacyPolicy: String? = nil) {
        data = .init(
            attributes: .init(
                description: description,
                feedbackEmail: feedbackEmail,
                marketingUrl: marketingUrl,
                privacyPolicyUrl: privacyPolicyUrl,
                tvOsPrivacyPolicy: tvOsPrivacyPolicy),
            id: id)
    }
}

// MARK: BetaAppLocalizationUpdateRequest.Data
extension BetaAppLocalizationUpdateRequest.Data {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A description of your app that highlights features and functionality.
        public vardescription: String?

        /// An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
        public varfeedbackEmail: String?

        /// A URL with information about your app. This URL is visible to testers in the TestFlight app
        public varmarketingUrl: String?

        /// A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
        public varprivacyPolicyUrl: String?

        /// Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
        public vartvOsPrivacyPolicy: String?
    }
}
