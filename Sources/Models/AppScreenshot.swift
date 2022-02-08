import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshot: Codable {
    public struct Attributes: Codable {
        public var assetDeliveryState: AppMediaAssetState?
        public var assetToken: String?
        public var assetType: String?
        public var fileName: String?
        public var fileSize: Int?
        public var imageAsset: ImageAsset?
        public var sourceFileChecksum: String?
        public var uploadOperations: [UploadOperation]?
    }

    public struct Relationships: Codable {
        public var appScreenshotSet: AppScreenshot.Relationships.AppScreenshotSet?
    }

    public var attributes: AppScreenshot.Attributes?

    public var id: String

    public var relationships: AppScreenshot.Relationships?

    public private(set) var type: String = "appScreenshots"

    public var links: ResourceLinks<AppScreenshotResponse>
}

public extension AppScreenshot.Relationships {
    struct AppScreenshotSet: Codable {
        public var data: AppScreenshot.Relationships.AppScreenshotSet.Data?

        public var links: AppScreenshot.Relationships.AppScreenshotSet.Links?
    }
}

public extension AppScreenshot.Relationships.AppScreenshotSet {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appScreenshotSets"
    }

    struct Links: Codable {
        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
