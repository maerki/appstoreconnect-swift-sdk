import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionLocalizationUpdateRequest: Codable {
    public struct Data: Codable {
        public var attributes: AppStoreVersionLocalizationUpdateRequest.Data.Attributes

        public var id: String

        public private(set) var type: String = "appStoreVersionLocalizations"
    }

    public var data: AppStoreVersionLocalizationUpdateRequest.Data

    init(
        id: String,
        description: String? = nil,
        keywords: String? = nil,
        marketingUrl: URL? = nil,
        promotionalText: String? = nil,
        supportUrl: URL? = nil,
        whatsNew: String? = nil
    ) {
        self.data = .init(attributes: .init(description: description,
                                            keywords: keywords,
                                            marketingUrl: marketingUrl,
                                            promotionalText: promotionalText,
                                            supportUrl: supportUrl,
                                            whatsNew: whatsNew),
                          id: id)
    }
}

public extension AppStoreVersionLocalizationUpdateRequest.Data {
    struct Attributes: Codable {
        public var description: String?

        public var keywords: String?

        public var marketingUrl: URL?

        public var promotionalText: String?

        public var supportUrl: URL?

        public var whatsNew: String?
    }
}
