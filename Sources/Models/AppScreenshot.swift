import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshot: Codable {
    public struct Attributes: Codable {
        public varassetDeliveryState: AppMediaAssetState?
        public varassetToken: String?
        public varassetType: String?
        public varfileName: String?
        public varfileSize: Int?
        public varimageAsset: ImageAsset?
        public varsourceFileChecksum: String?
        public varuploadOperations: [UploadOperation]?
    }

    public struct Relationships: Codable {
        public varappScreenshotSet: AppScreenshot.Relationships.AppScreenshotSet?
    }

    public varattributes: AppScreenshot.Attributes?

    public varid: String

    public varrelationships: AppScreenshot.Relationships?

    public private(set) var type: String = "appScreenshots"

    public varlinks: ResourceLinks<AppScreenshotResponse>
}

public extension AppScreenshot.Relationships {
    struct AppScreenshotSet: Codable {
        public vardata: AppScreenshot.Relationships.AppScreenshotSet.Data?

        public varlinks: AppScreenshot.Relationships.AppScreenshotSet.Links?
    }
}

public extension AppScreenshot.Relationships.AppScreenshotSet {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appScreenshotSets"
    }

    struct Links: Codable {
        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
