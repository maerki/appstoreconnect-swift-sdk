import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewSet: Codable {
    public struct Attributes: Codable {
        public varpreviewType: String?
    }

    public struct Relationships: Codable {
        public varappPreviews: AppPreviewSet.Relationships.AppPreviews?

        public varappStoreVersionLocalization: AppPreviewSet.Relationships.AppStoreVersionLocalization?
    }

    public varattributes: AppScreenshot.Attributes?

    public varid: String

    public varrelationships: AppScreenshot.Relationships?

    public private(set) var type: String = "appPreviewSets"

    public varlinks: ResourceLinks<AppScreenshotResponse>
}

public extension AppPreviewSet.Relationships {
    struct AppPreviews: Codable {
        public vardata: AppPreviewSet.Relationships.AppPreviews.Data?

        public varlinks: AppPreviewSet.Relationships.AppPreviews.Links?

        public varmeta: PagingInformation?
    }

    struct AppStoreVersionLocalization: Codable {
        public vardata: AppPreviewSet.Relationships.AppStoreVersionLocalization.Data?

        public varlinks: AppPreviewSet.Relationships.AppStoreVersionLocalization.Links?
    }
}

public extension AppPreviewSet.Relationships.AppPreviews {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appPreviews"
    }

    struct Links: Codable {
        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}

public extension AppPreviewSet.Relationships.AppStoreVersionLocalization {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appStoreVersionLocalizations"
    }

    struct Links: Codable {
        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
