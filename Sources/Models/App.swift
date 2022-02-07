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
        public varbundleId: String?

        /// The name of your app as it will appear in the App Store. The maximum length is 30 characters.
        public varname: String?

        /// The primary locale for your app. If localized app information isn’t available in an App Store territory, the information from your primary language is used instead.
        public varprimaryLocale: String?

        /// A unique ID for your app that is not visible on the App Store.
        public varsku: String?
    }

    public struct Relationships: Codable {

        /// App.Relationships.AppStoreVersion
        public varappStoreVersions: App.Relationships.AppStoreVersion?

        /// App.Relationships.BetaLicenseAgreement
        public varbetaLicenseAgreement: App.Relationships.BetaLicenseAgreement?

        /// App.Relationships.PreReleaseVersions
        public varpreReleaseVersions: App.Relationships.PreReleaseVersions?

        /// App.Relationships.BetaAppLocalizations
        public varbetaAppLocalizations: App.Relationships.BetaAppLocalizations?

        /// App.Relationships.BetaGroups
        public varbetaGroups: App.Relationships.BetaGroups?

        /// App.Relationships.BetaTesters
        public varbetaTesters: App.Relationships.BetaTesters?

        /// App.Relationships.Builds
        public varbuilds: App.Relationships.Builds?

        /// App.Relationships.BetaAppReviewDetail
        public varbetaAppReviewDetail: App.Relationships.BetaAppReviewDetail?
    }

    /// The resource's attributes.
    public varattributes: App.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: App.Relationships?

    /// The resource type.Value: apps
    public private(set) var type: String = "apps"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<AppResponse>
}

// MARK: App.Relationships
extension App.Relationships {

    public struct AppStoreVersion: Codable {

        /// [App.Relationships.AppStoreVersion.Data]
        public vardata: [App.Relationships.AppStoreVersion.Data]?

        /// App.Relationships.AppStoreVersion.Links
        public varlinks: App.Relationships.AppStoreVersion.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BetaAppLocalizations: Codable {

        /// [App.Relationships.BetaAppLocalizations.Data]
        public vardata: [App.Relationships.BetaAppLocalizations.Data]?

        /// App.Relationships.BetaAppLocalizations.Links
        public varlinks: App.Relationships.BetaAppLocalizations.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BetaAppReviewDetail: Codable {

        /// App.Relationships.BetaAppReviewDetail.Data
        public vardata: App.Relationships.BetaAppReviewDetail.Data?

        /// App.Relationships.BetaAppReviewDetail.Links
        public varlinks: App.Relationships.BetaAppReviewDetail.Links?
    }

    public struct BetaGroups: Codable {

        /// [App.Relationships.BetaGroups.Data]
        public vardata: [App.Relationships.BetaGroups.Data]?

        /// App.Relationships.BetaGroups.Links
        public varlinks: App.Relationships.BetaGroups.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BetaLicenseAgreement: Codable {

        /// App.Relationships.BetaLicenseAgreement.Data
        public vardata: App.Relationships.BetaLicenseAgreement.Data?

        /// App.Relationships.BetaLicenseAgreement.Links
        public varlinks: App.Relationships.BetaLicenseAgreement.Links?
    }

    public struct BetaTesters: Codable {

        /// [App.Relationships.BetaTesters.Data]
        public vardata: [App.Relationships.BetaTesters.Data]?

        /// App.Relationships.BetaTesters.Links
        public varlinks: App.Relationships.BetaTesters.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct Builds: Codable {

        /// [App.Relationships.Builds.Data]
        public vardata: [App.Relationships.Builds.Data]?

        /// App.Relationships.Builds.Links
        public varlinks: App.Relationships.Builds.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct PreReleaseVersions: Codable {

        /// [App.Relationships.PreReleaseVersions.Data]
        public vardata: [App.Relationships.PreReleaseVersions.Data]?

        /// App.Relationships.PreReleaseVersions.Links
        public varlinks: App.Relationships.PreReleaseVersions.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }
}

// MARK: App.Relationships.AppStoreVersions
extension App.Relationships.AppStoreVersion {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: appStoreVersions
        public private(set) var type: String = "appStoreVersions"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.BetaAppLocalizations
extension App.Relationships.BetaAppLocalizations {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaAppLocalizations
        public private(set) var type: String = "betaAppLocalizations"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.BetaAppReviewDetail
extension App.Relationships.BetaAppReviewDetail {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaAppReviewDetails
        public private(set) var type: String = "betaAppReviewDetails"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.BetaGroups
extension App.Relationships.BetaGroups {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.BetaLicenseAgreement
extension App.Relationships.BetaLicenseAgreement {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaLicenseAgreements
        public private(set) var type: String = "betaLicenseAgreements"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.BetaTesters
extension App.Relationships.BetaTesters {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.Builds
extension App.Relationships.Builds {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: builds
        public private(set) var type: String = "builds"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: App.Relationships.PreReleaseVersions
extension App.Relationships.PreReleaseVersions {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: preReleaseVersions
        public private(set) var type: String = "preReleaseVersions"
    }

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
