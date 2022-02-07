import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreview: Codable {
    public struct Attributes: Codable {
        public varassetDeliveryState: AppMediaAssetState?
        public varfileName: String?
        public varfileSize: Int?
        public varmimeType: String?
        public varpreviewFrameTimeCode: String?
        public varpreviewImage: ImageAsset?
        public varsourceFileChecksum: String?
        public varuploadOperations: [UploadOperation]?
        public varvideoUrl: String?
    }

    public struct Relationships: Codable {
        public varappPreviewSet: AppPreview.Relationships.AppPreviewSet?
    }

    public varattributes: AppScreenshot.Attributes?

    public varid: String

    public varrelationships: AppScreenshot.Relationships?

    public private(set) var type: String = "appPreview"

    public varlinks: ResourceLinks<AppScreenshotResponse>
}

public extension AppPreview.Relationships {
    struct AppPreviewSet: Codable {
        public vardata: AppPreview.Relationships.AppPreviewSet.Data?

        public varlinks: AppPreview.Relationships.AppPreviewSet.Links?

        public varmeta: PagingInformation?
    }
}

public extension AppPreview.Relationships.AppPreviewSet {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appPreviewsSets"
    }

    struct Links: Codable {
        /// uri-reference
        public varrelated: URL?

        /// uri-reference
        public var`self`: URL?
    }
}
