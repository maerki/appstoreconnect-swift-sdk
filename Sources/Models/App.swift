//
//  App.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct App: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// The bundle ID for your app. This ID must match the one you use in Xcode. The bundle ID cannot be changed after you upload your first build.
        public var bundleId: String?

        /// The name of your app as it will appear in the App Store. The maximum length is 30 characters.
        public var name: String?

        /// The primary locale for your app. If localized app information isn’t available in an App Store territory, the information from your primary language is used instead.
        public var primaryLocale: String?

        /// A unique ID for your app that is not visible on the App Store.
        public var sku: String?
    }

    public struct Relationships: Codable {

        /// App.Relationships.AppStoreVersion
        public var appStoreVersions: App.Relationships.AppStoreVersion?

        /// App.Relationships.BetaLicenseAgreement
        public var betaLicenseAgreement: App.Relationships.BetaLicenseAgreement?

        /// App.Relationships.PreReleaseVersions
        public var preReleaseVersions: App.Relationships.PreReleaseVersions?

        /// App.Relationships.BetaAppLocalizations
        public var betaAppLocalizations: App.Relationships.BetaAppLocalizations?

        /// App.Relationships.BetaGroups
        public var betaGroups: App.Relationships.BetaGroups?

        /// App.Relationships.BetaTesters
        public var betaTesters: App.Relationships.BetaTesters?

        /// App.Relationships.Builds
        public var builds: App.Relationships.Builds?

        /// App.Relationships.BetaAppReviewDetail
        public var betaAppReviewDetail: App.Relationships.BetaAppReviewDetail?
    }

    /// The resource's attributes.
    public var attributes: App.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: App.Relationships?

    /// The resource type.Value: apps
    public private(set) var type: String = "apps"

    /// Navigational links that include the self-link.
    public var links: ResourceLinks<AppResponse>
}

// MARK: App.Relationships
extension App.Relationships {

    public struct AppStoreVersion: Codable {

        /// [App.Relationships.AppStoreVersion.Data]
        public var data: [App.Relationships.AppStoreVersion.Data]?

        /// App.Relationships.AppStoreVersion.Links
        public var links: App.Relationships.AppStoreVersion.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct BetaAppLocalizations: Codable {

        /// [App.Relationships.BetaAppLocalizations.Data]
        public var data: [App.Relationships.BetaAppLocalizations.Data]?

        /// App.Relationships.BetaAppLocalizations.Links
        public var links: App.Relationships.BetaAppLocalizations.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct BetaAppReviewDetail: Codable {

        /// App.Relationships.BetaAppReviewDetail.Data
        public var data: App.Relationships.BetaAppReviewDetail.Data?

        /// App.Relationships.BetaAppReviewDetail.Links
        public var links: App.Relationships.BetaAppReviewDetail.Links?
    }

    public struct BetaGroups: Codable {

        /// [App.Relationships.BetaGroups.Data]
        public var data: [App.Relationships.BetaGroups.Data]?

        /// App.Relationships.BetaGroups.Links
        public var links: App.Relationships.BetaGroups.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct BetaLicenseAgreement: Codable {

        /// App.Relationships.BetaLicenseAgreement.Data
        public var data: App.Relationships.BetaLicenseAgreement.Data?

        /// App.Relationships.BetaLicenseAgreement.Links
        public var links: App.Relationships.BetaLicenseAgreement.Links?
    }

    public struct BetaTesters: Codable {

        /// [App.Relationships.BetaTesters.Data]
        public var data: [App.Relationships.BetaTesters.Data]?

        /// App.Relationships.BetaTesters.Links
        public var links: App.Relationships.BetaTesters.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct Builds: Codable {

        /// [App.Relationships.Builds.Data]
        public var data: [App.Relationships.Builds.Data]?

        /// App.Relationships.Builds.Links
        public var links: App.Relationships.Builds.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }

    public struct PreReleaseVersions: Codable {

        /// [App.Relationships.PreReleaseVersions.Data]
        public var data: [App.Relationships.PreReleaseVersions.Data]?

        /// App.Relationships.PreReleaseVersions.Links
        public var links: App.Relationships.PreReleaseVersions.Links?

        /// PagingInformation
        public var meta: PagingInformation?
    }
}

// MARK: App.Relationships.AppStoreVersions
extension App.Relationships.AppStoreVersion {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: appStoreVersions
        public private(set) var type: String = "appStoreVersions"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.BetaAppLocalizations
extension App.Relationships.BetaAppLocalizations {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaAppLocalizations
        public private(set) var type: String = "betaAppLocalizations"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.BetaAppReviewDetail
extension App.Relationships.BetaAppReviewDetail {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaAppReviewDetails
        public private(set) var type: String = "betaAppReviewDetails"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.BetaGroups
extension App.Relationships.BetaGroups {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.BetaLicenseAgreement
extension App.Relationships.BetaLicenseAgreement {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaLicenseAgreements
        public private(set) var type: String = "betaLicenseAgreements"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.BetaTesters
extension App.Relationships.BetaTesters {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.Builds
extension App.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

// MARK: App.Relationships.PreReleaseVersions
extension App.Relationships.PreReleaseVersions {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var `id`: String

        /// The resource type.Value: preReleaseVersions
        public private(set) var type: String = "preReleaseVersions"
    }

    public struct Links: Codable {

        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
