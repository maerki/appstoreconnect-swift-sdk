import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreview: Codable {
    public struct Attributes: Codable {
        public var assetDeliveryState: AppMediaAssetState?
        public var fileName: String?
        public var fileSize: Int?
        public var mimeType: String?
        public var previewFrameTimeCode: String?
        public var previewImage: ImageAsset?
        public var sourceFileChecksum: String?
        public var uploadOperations: [UploadOperation]?
        public var videoUrl: String?
    }

    public struct Relationships: Codable {
        public var appPreviewSet: AppPreview.Relationships.AppPreviewSet?
    }

    public var attributes: AppScreenshot.Attributes?

    public var id: String

    public var relationships: AppScreenshot.Relationships?

    public private(set) var type: String = "appPreview"

    public var links: ResourceLinks<AppScreenshotResponse>
}

public extension AppPreview.Relationships {
    struct AppPreviewSet: Codable {
        public var data: AppPreview.Relationships.AppPreviewSet.Data?

        public var links: AppPreview.Relationships.AppPreviewSet.Links?

        public var meta: PagingInformation?
    }
}

public extension AppPreview.Relationships.AppPreviewSet {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appPreviewsSets"
    }

    struct Links: Codable {
        /// uri-reference
        public var related: URL?

        /// uri-reference
        public var `self`: URL?
    }
}
