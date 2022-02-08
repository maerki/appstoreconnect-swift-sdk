//
//  AppStoreVersion.swift
//
//
//  Created by Morten Bjerg Gregersen on 24/08/2020.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct AppStoreVersion: Codable {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {
        public var platform: Platform?
        public var appStoreState: AppStoreVersionState?
        public var copyright: String?
        public var earliestReleaseDate: Date?
        public var releaseType: String?
        public var usesIdfa: Bool?
        public var versionString: String?
        public var createdDate: Date?
        public var downloadable: Bool?
    }

    public struct Relationships: Codable {
        public var app: AppStoreVersion.Relationships.App?
        public var ageRatingDeclaration: AppStoreVersion.Relationships.AgeRatingDeclaration?
        public var appStoreReviewDetail: AppStoreVersion.Relationships.AppStoreReviewDetail?
        public var appStoreVersionLocalizations: AppStoreVersion.Relationships.AppStoreVersionLocalizations?
        public var appStoreVersionPhasedRelease: AppStoreVersion.Relationships.AppStoreVersionPhasedRelease?
        public var appStoreVersionSubmission: AppStoreVersion.Relationships.AppStoreVersionSubmission?
        public var build: AppStoreVersion.Relationships.Build?
        public var idfaDeclaration: AppStoreVersion.Relationships.IdfaDeclaration?
        public var routingAppCoverage: AppStoreVersion.Relationships.RoutingAppCoverage?
    }

    /// The resource's attributes.
    public var attributes: AppStoreVersion.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var id: String

    // Navigational links that include the self-link.
    public var links: ResourceLinks<AppStoreVersionResponse>

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: AppStoreVersion.Relationships?

    /// The resource type.Value: appStoreVersions
    public private(set) var type: String = "appStoreVersions"

}

// MARK: AppStoreVersion.Relationships
extension AppStoreVersion.Relationships {
    public struct App: Codable {
        public var data: AppStoreVersion.Relationships.App.Data?
        public var links: AppStoreVersion.Relationships.App.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "apps"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct AgeRatingDeclaration: Codable {
        public var data: AppStoreVersion.Relationships.AgeRatingDeclaration.Data?
        public var links: AppStoreVersion.Relationships.AgeRatingDeclaration.Links

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "ageRatingDeclarations"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct AppStoreReviewDetail: Codable {
        public var data: AppStoreVersion.Relationships.AppStoreReviewDetail.Data?
        public var links: AppStoreVersion.Relationships.AppStoreReviewDetail.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appStoreReviewDetails"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct AppStoreVersionLocalizations: Codable {
        public var data: AppStoreVersion.Relationships.AppStoreVersionLocalizations.Data?
        public var links: AppStoreVersion.Relationships.AppStoreVersionLocalizations.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appStoreVersionLocalizations"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct AppStoreVersionPhasedRelease: Codable {
        public var data: AppStoreVersion.Relationships.AppStoreVersionPhasedRelease.Data?
        public var links: AppStoreVersion.Relationships.AppStoreVersionPhasedRelease.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appStoreVersionPhasedReleases"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct AppStoreVersionSubmission: Codable {
        public var data: AppStoreVersion.Relationships.AppStoreVersionSubmission.Data?
        public var links: AppStoreVersion.Relationships.AppStoreVersionSubmission.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appStoreVersionSubmissions"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct Build: Codable {
        public var data: AppStoreVersion.Relationships.Build.Data?
        public var links: AppStoreVersion.Relationships.Build.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "builds"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct IdfaDeclaration: Codable {
        public var data: AppStoreVersion.Relationships.IdfaDeclaration.Data?
        public var links: AppStoreVersion.Relationships.IdfaDeclaration.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "idfaDeclarations"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }

    public struct RoutingAppCoverage: Codable {
        public var data: AppStoreVersion.Relationships.RoutingAppCoverage.Data?
        public var links: AppStoreVersion.Relationships.RoutingAppCoverage.Links?

        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "routingAppCoverages"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }
    }
}
