import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionLocalizationCreateRequest: Codable {
    public struct Data: Codable {
        public var attributes: AppStoreVersionLocalizationCreateRequest.Data.Attributes

        public var relationships: AppStoreVersionLocalizationCreateRequest.Data.Relationships

        public private(set) var type: String = "appStoreVersionLocalizations"
    }

    public var data: AppStoreVersionLocalizationCreateRequest.Data

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
        public var locale: String

        public var description: String?

        public var keywords: String?

        public var marketingUrl: URL?

        public var promotionalText: String?

        public var supportUrl: URL?

        public var whatsNew: String?
    }

    struct Relationships: Codable {
        public var appStoreVersion: AppStoreVersionLocalizationCreateRequest.Data.Relationships.AppStoreVersion
    }
}

// MARK: BetaAppLocalizationCreateRequest.Data.Relationships

public extension AppStoreVersionLocalizationCreateRequest.Data.Relationships {
    struct AppStoreVersion: Codable {
        public var data: AppStoreVersionLocalizationCreateRequest.Data.Relationships.AppStoreVersion.Data
    }
}

// MARK: BetaAppLocalizationCreateRequest.Data.Relationships.App

public extension AppStoreVersionLocalizationCreateRequest.Data.Relationships.AppStoreVersion {
    struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appStoreVersions"
    }
}
