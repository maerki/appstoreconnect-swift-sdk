import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSet: Codable {
    public struct Attributes: Codable {
        public varscreenshotDisplayType: String?
    }

    public struct Relationships: Codable {
        public varappScreenshots: AppScreenshotSet.Relationships.AppScreenshots?
        public varappStoreVersionLocalization: AppScreenshotSet.Relationships.AppStoreVersionLocalization?
    }

    public varattributes: AppScreenshotSet.Attributes?

    public varid: String

    public varrelationships: AppScreenshotSet.Relationships?

    public private(set) var type: String = "appScreenshotSets"

    public varlinks: ResourceLinks<AppScreenshotSetResponse>
}

public extension AppScreenshotSet.Relationships {
    struct AppScreenshots: Codable {
        public vardata: [AppScreenshotSet.Relationships.AppScreenshots.Data]?

        public varlinks: AppScreenshotSet.Relationships.AppScreenshots.Links?
    }

    struct AppStoreVersionLocalization: Codable {
        public vardata: AppScreenshotSet.Relationships.AppStoreVersionLocalization.Data?

        public varlinks: AppScreenshotSet.Relationships.AppStoreVersionLocalization.Links?
    }
}

public extension AppScreenshotSet.Relationships.AppScreenshots {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appScreenshotSets"
    }

    struct Links: Codable {
        public varrelated: URL?

        public var`self`: URL?
    }
}

public extension AppScreenshotSet.Relationships.AppStoreVersionLocalization {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appScreenshotSets"
    }

    struct Links: Codable {
        public varrelated: URL?

        public var`self`: URL?
    }
}
