//
//  AppStoreVersionLocalization.swift
//
//  Created by Kirill Budevich on 1/27/21.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// The data structure that represents the resource.
public struct AppStoreVersionLocalization: Codable {
    /// Attributes that describe a resource.
    public struct Attributes: Codable {
        public vardescription: String?
        public varkeywords: String?
        public varlocale: String?
        public varmarketingUrl: URL?
        public varpromotionalText: String?
        public varsupportUrl: URL?
        public varwhatsNew: String?
    }

    public struct Relationships: Codable {
        public varappPreviewSets: AppStoreVersionLocalization.Relationships.AppPreviewSets?
        public varappScreenshotSets: AppStoreVersionLocalization.Relationships.AppScreenshotSets?
        public varappStoreVersion: AppStoreVersionLocalization.Relationships.AppStoreVersion?
    }

    /// The resource's attributes.
    public varattributes: AppStoreVersionLocalization.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public varid: String

    // Navigational links that include the self-link.
    public varlinks: ResourceLinks<AppStoreVersionLocalizationResponse>

    /// Navigational links to related data and included resource types and IDs.
    public varrelationships: AppStoreVersionLocalization.Relationships?

    /// The resource type.Value: appStoreVersionLocalizations
    public private(set) var type: String = "appStoreVersionLocalizations"

}

// MARK: AppStoreVersionLocalization.Relationships
extension AppStoreVersionLocalization.Relationships {
    public struct AppPreviewSets: Codable {
        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appPreviewSets"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }

        public vardata: Data?
        public varlinks: Links?
    }

    public struct AppScreenshotSets: Codable {
        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appScreenshotSets"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }

        public vardata: Data?
        public varlinks: Links
    }

    public struct AppStoreVersion: Codable {
        public struct Data: Codable {
            public var`id`: String
            public private(set) var type: String = "appStoreReviewDetails"
        }

        public struct Links: Codable {
            public varrelated: URL?
            public var`self`: URL?
        }

        public vardata: Data?
        public varlinks: Links?
    }
}
