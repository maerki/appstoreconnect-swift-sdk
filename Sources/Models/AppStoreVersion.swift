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
        public varplatform: Platform?
        public varappStoreState: AppStoreVersionState?
        public varcopyright: String?
        public varearliestReleaseDate: Date?
        public varreleaseType: String?
        public varusesIdfa: Bool?
        public varversionString: String?
        public varcreatedDate: Date?
        public vardownloadable: Bool?
    }

    public struct Relationships: Codable {
        public varapp: AppStoreVersion.Relationships.App?
        public varageRatingDeclaration: AppStoreVersion.Relationships.AgeRatingDeclaration?
        public varappStoreReviewDetail: AppStoreVersion.Relationships.AppStoreReviewDetail?
        public varappStoreVersionLocalizations: AppStoreVersion.Relationships.AppStoreVersionLocalizations?
        public varappStoreVersionPhasedRelease: AppStoreVersion.Relationships.AppStoreVersionPhasedRelease?
        public varappStoreVersionSubmission: AppStoreVersion.Relationships.AppStoreVersionSubmission?
        public varbuild: AppStoreVersion.Relationships.Build?
        public varidfaDeclaration: AppStoreVersion.Relationships.IdfaDeclaration?
        public varroutingAppCoverage: AppStoreVersion.Relationships.RoutingAppCoverage?
    }

    /// The resource's attributes.
    public varattributes: AppStoreVersion.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public varid: String

    // Navigational links that include the self-link.
    public varlinks: ResourceLinks<AppStoreVersionResponse>

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: AppStoreVersion.Relationships?

    /// The resource type.Value: appStoreVersions
    public private(set) var type: String = "appStoreVersions"

}

// MARK: AppStoreVersion.Relationships
extension AppStoreVersion.Relationships {
    public struct App: Codable {
        public vardata: AppStoreVersion.Relationships.App.Data?
        public varlinks: AppStoreVersion.Relationships.App.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "apps"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct AgeRatingDeclaration: Codable {
        public vardata: AppStoreVersion.Relationships.AgeRatingDeclaration.Data?
        public varlinks: AppStoreVersion.Relationships.AgeRatingDeclaration.Links

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "ageRatingDeclarations"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct AppStoreReviewDetail: Codable {
        public vardata: AppStoreVersion.Relationships.AppStoreReviewDetail.Data?
        public varlinks: AppStoreVersion.Relationships.AppStoreReviewDetail.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appStoreReviewDetails"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct AppStoreVersionLocalizations: Codable {
        public vardata: AppStoreVersion.Relationships.AppStoreVersionLocalizations.Data?
        public varlinks: AppStoreVersion.Relationships.AppStoreVersionLocalizations.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appStoreVersionLocalizations"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct AppStoreVersionPhasedRelease: Codable {
        public vardata: AppStoreVersion.Relationships.AppStoreVersionPhasedRelease.Data?
        public varlinks: AppStoreVersion.Relationships.AppStoreVersionPhasedRelease.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appStoreVersionPhasedReleases"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct AppStoreVersionSubmission: Codable {
        public vardata: AppStoreVersion.Relationships.AppStoreVersionSubmission.Data?
        public varlinks: AppStoreVersion.Relationships.AppStoreVersionSubmission.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appStoreVersionSubmissions"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct Build: Codable {
        public vardata: AppStoreVersion.Relationships.Build.Data?
        public varlinks: AppStoreVersion.Relationships.Build.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "builds"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct IdfaDeclaration: Codable {
        public vardata: AppStoreVersion.Relationships.IdfaDeclaration.Data?
        public varlinks: AppStoreVersion.Relationships.IdfaDeclaration.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "idfaDeclarations"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }

    public struct RoutingAppCoverage: Codable {
        public vardata: AppStoreVersion.Relationships.RoutingAppCoverage.Data?
        public varlinks: AppStoreVersion.Relationships.RoutingAppCoverage.Links?

        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "routingAppCoverages"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }
    }
}
