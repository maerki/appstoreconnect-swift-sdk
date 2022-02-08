//
//  BetaAppReviewDetail.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct BetaAppReviewDetail: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// Email address of contact in case communication is needed with the beta app review.
        public var contactEmail: String?

        /// First name of contact in case communication is needed with the beta app review.
        public var contactFirstName: String?

        /// Last name of contact in case communication is needed with the beta app review.
        public var contactLastName: String?

        /// Phone number of contact in case communication is needed with the beta app review.
        public var contactPhone: String?

        /// The user name to sign in to your app to review its features.
        public var demoAccountName: String?

        /// The password to sign in to your app to review its features.
        public var demoAccountPassword: String?

        /// A Boolean value that indicates if sign-in information is required to review all the features of your app. If users sign in using social media, provide information for an account for review. Credentials must be valid and active for duration of review.
        public var demoAccountRequired: Bool?

        /// Additional information about your app that can help during the review process. Do not include demo account details. Review notes have a maximum of 4,000 characters.
        public var notes: String?
    }

    public struct Relationships: Codable {

        /// BetaAppReviewDetail.Relationships.App
        public var app: BetaAppReviewDetail.Relationships.App?
    }

    /// The resource's attributes.
    public var attributes: BetaAppReviewDetail.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<BetaAppReviewDetailResponse>

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: BetaAppReviewDetail.Relationships?

    /// The resource type.Value: betaAppReviewDetails
    public private(set) var type: String = "betaAppReviewDetails"
}

// MARK: BetaAppReviewDetail.Relationships
extension BetaAppReviewDetail.Relationships {

    public struct App: Codable {

        /// BetaAppReviewDetail.Relationships.App.Data
        public var data: BetaAppReviewDetail.Relationships.App.Data?

        /// BetaAppReviewDetail.Relationships.App.Links
        public var links: BetaAppReviewDetail.Relationships.App.Links?
    }
}

// MARK: BetaAppReviewDetail.Relationships.App
extension BetaAppReviewDetail.Relationships.App {

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
