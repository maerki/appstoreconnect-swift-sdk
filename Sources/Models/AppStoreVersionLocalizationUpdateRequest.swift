import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionLocalizationUpdateRequest: Codable {
    public struct Data: Codable {
        public varattributes: AppStoreVersionLocalizationUpdateRequest.Data.Attributes

        public varid: String

        public private(set) var type: String = "appStoreVersionLocalizations"
    }

    public vardata: AppStoreVersionLocalizationUpdateRequest.Data

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
        public vardescription: String?

        public varkeywords: String?

        public varmarketingUrl: URL?

        public varpromotionalText: String?

        public varsupportUrl: URL?

        public varwhatsNew: String?
    }
}
