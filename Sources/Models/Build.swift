//
//  Build.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
/// The data structure that represents the resource.
public struct Build: Codable {

    /// Attributes that describe a resource.
    public struct Attributes: Codable {

        /// A Boolean value that indicates if the build has expired. An expired build is unavailable for testing.
        public varexpired: Bool?

        /// The icon of the uploaded build.
        public variconAssetToken: ImageAsset?

        /// The minimum operating system version needed to test a build.
        public varminOsVersion: String?

        /// The processing state of the build indicating that it is not yet available for testing. Possible values: PROCESSING, FAILED, INVALID, VALID
        public varprocessingState: String?

        /// The version number of the uploaded build.
        public varversion: String?

        /// A Boolean value that indicates whether the build uses non-exempt encryption.
        public varusesNonExemptEncryption: Bool?

        /// The date and time the build was uploaded to App Store Connect.
        public varuploadedDate: Date?

        /// The date and time the build  will auto-expire and no longer be available for testing.
        public varexpirationDate: Date?
    }

    public struct Relationships: Codable {

        /// Build.Relationships.App
        public varapp: Build.Relationships.App?

        /// Build.Relationships.AppEncryptionDeclaration
        public varappEncryptionDeclaration: Build.Relationships.AppEncryptionDeclaration?

        /// Build.Relationships.IndividualTesters
        public varindividualTesters: Build.Relationships.IndividualTesters?

        /// Build.Relationships.PreReleaseVersion
        public varpreReleaseVersion: Build.Relationships.PreReleaseVersion?

        /// Build.Relationships.BetaBuildLocalizations
        public varbetaBuildLocalizations: Build.Relationships.BetaBuildLocalizations?

        /// Build.Relationships.BetaGroups
        public varbetaGroups: Build.Relationships.BetaGroups?

        /// Build.Relationships.BuildBetaDetail
        public varbuildBetaDetail: Build.Relationships.BuildBetaDetail?

        /// Build.Relationships.BetaAppReviewSubmission
        public varbetaAppReviewSubmission: Build.Relationships.BetaAppReviewSubmission?

        /// Build.Relationships.BuildBundles
        public varbuildBundles: Build.Relationships.BuildBundles?
    }

    /// The resource's attributes.
    public varattributes: Build.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var`id`: String

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: Build.Relationships?

    /// The resource type.Value: builds
    public private(set) var type: String = "builds"

    /// Navigational links that include the self-link.
    public varlinks: ResourceLinks<BuildResponse>
}

// MARK: Build.Relationships
extension Build.Relationships {

    public struct App: Codable {

        /// Build.Relationships.App.Data
        public vardata: Build.Relationships.App.Data?

        /// Build.Relationships.App.Links
        public varlinks: Build.Relationships.App.Links?
    }

    public struct AppEncryptionDeclaration: Codable {

        /// Build.Relationships.AppEncryptionDeclaration.Data
        public vardata: Build.Relationships.AppEncryptionDeclaration.Data?

        /// Build.Relationships.AppEncryptionDeclaration.Links
        public varlinks: Build.Relationships.AppEncryptionDeclaration.Links?
    }

    public struct BetaAppReviewSubmission: Codable {

        /// Build.Relationships.BetaAppReviewSubmission.Data
        public vardata: Build.Relationships.BetaAppReviewSubmission.Data?

        /// Build.Relationships.BetaAppReviewSubmission.Links
        public varlinks: Build.Relationships.BetaAppReviewSubmission.Links?
    }

    public struct BetaBuildLocalizations: Codable {

        /// [Build.Relationships.BetaBuildLocalizations.Data]
        public vardata: [Build.Relationships.BetaBuildLocalizations.Data]?

        /// Build.Relationships.BetaBuildLocalizations.Links
        public varlinks: Build.Relationships.BetaBuildLocalizations.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BetaGroups: Codable {

        /// [Build.Relationships.BetaGroups.Data]
        public vardata: [Build.Relationships.BetaGroups.Data]?

        /// Build.Relationships.BetaGroups.Links
        public varlinks: Build.Relationships.BetaGroups.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct BuildBetaDetail: Codable {

        /// Build.Relationships.BuildBetaDetail.Data
        public vardata: Build.Relationships.BuildBetaDetail.Data?

        /// Build.Relationships.BuildBetaDetail.Links
        public varlinks: Build.Relationships.BuildBetaDetail.Links?
    }

    public struct IndividualTesters: Codable {

        /// [Build.Relationships.IndividualTesters.Data]
        public vardata: [Build.Relationships.IndividualTesters.Data]?

        /// Build.Relationships.IndividualTesters.Links
        public varlinks: Build.Relationships.IndividualTesters.Links?

        /// PagingInformation
        public varmeta: PagingInformation?
    }

    public struct PreReleaseVersion: Codable {

        /// Build.Relationships.PreReleaseVersion.Data
        public vardata: Build.Relationships.PreReleaseVersion.Data?

        /// Build.Relationships.PreReleaseVersion.Links
        public varlinks: Build.Relationships.PreReleaseVersion.Links?
    }

    public struct BuildBundles: Codable {

        /// Build.Relationships.BuildBundles.Data
        public vardata: [Build.Relationships.BuildBundles.Data]?
    }
}

// MARK: Build.Relationships.App
extension Build.Relationships.App {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: apps
        public private(set) var type: String = "apps"
    }
}

// MARK: Build.Relationships.App
extension Build.Relationships.App {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.AppEncryptionDeclaration
extension Build.Relationships.AppEncryptionDeclaration {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: appEncryptionDeclarations
        public private(set) var type: String = "appEncryptionDeclarations"
    }
}

// MARK: Build.Relationships.AppEncryptionDeclaration
extension Build.Relationships.AppEncryptionDeclaration {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.BetaAppReviewSubmission
extension Build.Relationships.BetaAppReviewSubmission {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaAppReviewSubmissions
        public private(set) var type: String = "betaAppReviewSubmissions"
    }
}

// MARK: Build.Relationships.BetaAppReviewSubmission
extension Build.Relationships.BetaAppReviewSubmission {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.BetaBuildLocalizations
extension Build.Relationships.BetaBuildLocalizations {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaBuildLocalizations
        public private(set) var type: String = "betaBuildLocalizations"
    }
}

// MARK: Build.Relationships.BetaBuildLocalizations
extension Build.Relationships.BetaBuildLocalizations {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.BetaGroups
extension Build.Relationships.BetaGroups {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaGroups
        public private(set) var type: String = "betaGroups"
    }
}

// MARK: Build.Relationships.BetaGroups
extension Build.Relationships.BetaGroups {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.BuildBetaDetail
extension Build.Relationships.BuildBetaDetail {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: buildBetaDetails
        public private(set) var type: String = "buildBetaDetails"
    }
}

// MARK: Build.Relationships.BuildBetaDetail
extension Build.Relationships.BuildBetaDetail {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.IndividualTesters
extension Build.Relationships.IndividualTesters {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: betaTesters
        public private(set) var type: String = "betaTesters"
    }
}

// MARK: Build.Relationships.IndividualTesters
extension Build.Relationships.IndividualTesters {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.PreReleaseVersion
extension Build.Relationships.PreReleaseVersion {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: preReleaseVersions
        public private(set) var type: String = "preReleaseVersions"
    }
}

// MARK: Build.Relationships.PreReleaseVersion
extension Build.Relationships.PreReleaseVersion {

    public struct Links: Codable {

        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

// MARK: Build.Relationships.PreReleaseVersion
extension Build.Relationships.BuildBundles {

    public struct Data: Codable {

        /// The opaque resource ID that uniquely identifies the resource.
        public var`id`: String

        /// The resource type.Value: buildBundles
        public vartype: String = "buildBundles"
    }
}
