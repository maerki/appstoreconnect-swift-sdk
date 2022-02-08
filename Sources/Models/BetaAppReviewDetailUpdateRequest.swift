//
//  BetaAppReviewDetailUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// A request containing a single resource.
public struct BetaAppReviewDetailUpdateRequest: Codable {

    public struct Data: Codable {

        /// The resource's attributes.
        public var attributes: BetaAppReviewDetailUpdateRequest.Data.Attributes?

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaAppReviewDetails
        public private(set) var type: String = "betaAppReviewDetails"
    }

    /// The resource data.
    public var data: BetaAppReviewDetailUpdateRequest.Data

    /// - Parameters:
    ///   - id: The opaque resource ID that uniquely identifies the resource.
    ///   - contactEmail: Email address of contact in case communication is needed with the beta app review.
    ///   - contactFirstName: First name of contact in case communication is needed with the beta app review.
    ///   - contactLastName: Last name of contact in case communication is needed with the beta app review.
    ///   - contactPhone: Phone number of contact in case communication is needed with the beta app review.
    ///   - demoAccountName: The user name to sign in to your app to review its features.
    ///   - demoAccountPassword: The password to sign in to your app to review its features.
    ///   - demoAccountRequired: A Boolean value that indicates if sign-in information is required to review all the features of your app. If users sign in using social media, provide information for an account for review. Credentials must be valid and active for duration of review.
    ///   - notes: Additional information about your app that can help during the review process. Do not include demo account details. Review notes have a maximum of 4,000 characters.
    init(id: String,
         contactEmail: String? = nil,
         contactFirstName: String? = nil,
         contactLastName: String? = nil,
         contactPhone: String? = nil,
         demoAccountName: String? = nil,
         demoAccountPassword: String? = nil,
         demoAccountRequired: Bool? = nil,
         notes: String? = nil) {
        data = .init(
            attributes: .init(
                contactEmail: contactEmail,
                contactFirstName: contactFirstName,
                contactLastName: contactLastName,
                contactPhone: contactPhone,
                demoAccountName: demoAccountName,
                demoAccountPassword: demoAccountPassword,
                demoAccountRequired: demoAccountRequired,
                notes: notes),
            id: id)
    }
}

// MARK: BetaAppReviewDetailUpdateRequest.Data
extension BetaAppReviewDetailUpdateRequest.Data {
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
}
