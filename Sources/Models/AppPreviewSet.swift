import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewSet: Codable {
    public struct Attributes: Codable {
        public var previewType: String?
    }

    public struct Relationships: Codable {
        public var appPreviews: AppPreviewSet.Relationships.AppPreviews?

        public var appStoreVersionLocalization: AppPreviewSet.Relationships.AppStoreVersionLocalization?
    }

    public var attributes: AppScreenshot.Attributes?

    public var id: String

    public var relationships: AppScreenshot.Relationships?

    public private(set) var type: String = "appPreviewSets"

    public var links: ResourceLinks<AppScreenshotResponse>
}

public extension AppPreviewSet.Relationships {
    struct AppPreviews: Codable {
        public var data: AppPreviewSet.Relationships.AppPreviews.Data?

        public var links: AppPreviewSet.Relationships.AppPreviews.Links?

        public var meta: PagingInformation?
    }

    struct AppStoreVersionLocalization: Codable {
        public var data: AppPreviewSet.Relationships.AppStoreVersionLocalization.Data?

        public var links: AppPreviewSet.Relationships.AppStoreVersionLocalization.Links?
    }
}

public extension AppPreviewSet.Relationships.AppPreviews {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appPreviews"
    }

    struct Links: Codable {
        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}

public extension AppPreviewSet.Relationships.AppStoreVersionLocalization {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appStoreVersionLocalizations"
    }

    struct Links: Codable {
        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
