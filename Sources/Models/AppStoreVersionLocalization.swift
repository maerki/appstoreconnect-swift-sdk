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
        public var description: String?
        public var keywords: String?
        public var locale: String?
        public var marketingUrl: URL?
        public var promotionalText: String?
        public var supportUrl: URL?
        public var whatsNew: String?
    }

    public struct Relationships: Codable {
        public var appPreviewSets: AppStoreVersionLocalization.Relationships.AppPreviewSets?
        public var appScreenshotSets: AppStoreVersionLocalization.Relationships.AppScreenshotSets?
        public var appStoreVersion: AppStoreVersionLocalization.Relationships.AppStoreVersion?
    }

    /// The resource's attributes.
    public var attributes: AppStoreVersionLocalization.Attributes?

    /// The opaque resource ID that uniquely identifies the resource.
    public var id: String

    // Navigational links that include the self-link.
    public var links: ResourceLinks<AppStoreVersionLocalizationResponse>

    /// Navigational links to related data and included resource types and IDs.
    public var relationships: AppStoreVersionLocalization.Relationships?

    /// The resource type.Value: appStoreVersionLocalizations
    public private(set) var type: String = "appStoreVersionLocalizations"

}

// MARK: AppStoreVersionLocalization.Relationships
extension AppStoreVersionLocalization.Relationships {
    public struct AppPreviewSets: Codable {
        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appPreviewSets"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }

        public var data: Data?
        public var links: Links?
    }

    public struct AppScreenshotSets: Codable {
        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appScreenshotSets"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }

        public var data: Data?
        public var links: Links
    }

    public struct AppStoreVersion: Codable {
        public struct Data: Codable {
            public var `id`: String
            public private(set) var type: String = "appStoreReviewDetails"
        }

        public struct Links: Codable {
            public var related: URL?
            public var `self`: URL?
        }

        public var data: Data?
        public var links: Links?
    }
}
