import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionLocalizationCreateRequest: Codable {
    public struct Data: Codable {
        public varattributes: AppStoreVersionLocalizationCreateRequest.Data.Attributes

        public varrelationships: AppStoreVersionLocalizationCreateRequest.Data.Relationships

        public private(set) var type: String = "appStoreVersionLocalizations"
    }

    public vardata: AppStoreVersionLocalizationCreateRequest.Data

    init(
        appStoreVersionId: String,
        locale: String,
        description: String? = nil,
        keywords: String? = nil,
        marketingUrl: URL? = nil,
        promotionalText: String? = nil,
        supportUrl: URL? = nil,
        whatsNew: String? = nil
    ) {
        self.data = .init(attributes:
            .init(
                locale: locale,
                description: description,
                keywords: keywords,
                marketingUrl: marketingUrl,
                promotionalText: promotionalText,
                supportUrl: supportUrl,
                whatsNew: whatsNew
            ),
            relationships: .init(appStoreVersion: .init(data: .init(id: appStoreVersionId))))
    }
}

public extension AppStoreVersionLocalizationCreateRequest.Data {
    struct Attributes: Codable {
        public varlocale: String

        public vardescription: String?

        public varkeywords: String?

        public varmarketingUrl: URL?

        public varpromotionalText: String?

        public varsupportUrl: URL?

        public varwhatsNew: String?
    }

    struct Relationships: Codable {
        public varappStoreVersion: AppStoreVersionLocalizationCreateRequest.Data.Relationships.AppStoreVersion
    }
}

// MARK: BetaAppLocalizationCreateRequest.Data.Relationships

public extension AppStoreVersionLocalizationCreateRequest.Data.Relationships {
    struct AppStoreVersion: Codable {
        public vardata: AppStoreVersionLocalizationCreateRequest.Data.Relationships.AppStoreVersion.Data
    }
}

// MARK: BetaAppLocalizationCreateRequest.Data.Relationships.App

public extension AppStoreVersionLocalizationCreateRequest.Data.Relationships.AppStoreVersion {
    struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appStoreVersions"
    }
}
