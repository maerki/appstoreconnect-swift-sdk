import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSet: Codable {
    public struct Attributes: Codable {
        public var screenshotDisplayType: String?
    }

    public struct Relationships: Codable {
        public var appScreenshots: AppScreenshotSet.Relationships.AppScreenshots?
        public var appStoreVersionLocalization: AppScreenshotSet.Relationships.AppStoreVersionLocalization?
    }

    public var attributes: AppScreenshotSet.Attributes?

    public var id: String

    public var relationships: AppScreenshotSet.Relationships?

    public private(set) var type: String = "appScreenshotSets"

    public var links: ResourceLinks<AppScreenshotSetResponse>
}

public extension AppScreenshotSet.Relationships {
    struct AppScreenshots: Codable {
        public var data: [AppScreenshotSet.Relationships.AppScreenshots.Data]?

        public var links: AppScreenshotSet.Relationships.AppScreenshots.Links?
    }

    struct AppStoreVersionLocalization: Codable {
        public var data: AppScreenshotSet.Relationships.AppStoreVersionLocalization.Data?

        public var links: AppScreenshotSet.Relationships.AppStoreVersionLocalization.Links?
    }
}

public extension AppScreenshotSet.Relationships.AppScreenshots {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appScreenshotSets"
    }

    struct Links: Codable {
        public var related: URL?

        public var `self`: URL?
    }
}

public extension AppScreenshotSet.Relationships.AppStoreVersionLocalization {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appScreenshotSets"
    }

    struct Links: Codable {
        public var related: URL?

        public var `self`: URL?
    }
}
