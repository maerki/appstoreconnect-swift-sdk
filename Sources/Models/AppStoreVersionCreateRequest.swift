import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionCreateRequest: Codable {

    public vardata: AppStoreVersionCreateRequest.Data

    public init(
        appStoreVersionForAppId id: String,
        versionString: String,
        platform: AppStoreVersionCreateRequest.Data.Attributes.Platform,
        copyright: String? = nil,
        earliestReleaseDate: Date? = nil,
        releaseType: AppStoreVersionCreateRequest.Data.Attributes.ReleaseType? = nil,
        usesIdfa: Bool? = nil,
        buildId: String? = nil
    ) {
        var build: AppStoreVersionCreateRequest.Data.Relationships.Build?
        if let buildId = buildId {
            build = .init(data: .init(id: buildId))
        }

        data = .init(attributes: .init(copyright: copyright,
                                       earliestReleaseDate: earliestReleaseDate,
                                       platform: platform,
                                       releaseType: releaseType,
                                       usesIdfa: usesIdfa,
                                       versionString: versionString),
                     relationships: .init(app: .init(data: .init(id: id)),
                                          build: build))
    }
}

// MARK: AppStoreVersionCreateRequest
extension AppStoreVersionCreateRequest {

    public struct Data: Codable {

        public varattributes: AppStoreVersionCreateRequest.Data.Attributes

        public varrelationships: AppStoreVersionCreateRequest.Data.Relationships

        public private(set) var type: String = "appStoreVersions"
    }
}

// MARK: AppStoreVersionCreateRequest.Data
extension AppStoreVersionCreateRequest.Data {

    public struct Attributes: Codable {

        public varcopyright: String?

        public varearliestReleaseDate: Date?

        public varplatform: AppStoreVersionCreateRequest.Data.Attributes.Platform

        public varreleaseType: AppStoreVersionCreateRequest.Data.Attributes.ReleaseType?

        public varusesIdfa: Bool?

        public varversionString: String
    }

    public struct Relationships: Codable {

        public varapp: AppStoreVersionCreateRequest.Data.Relationships.App

        public varbuild: AppStoreVersionCreateRequest.Data.Relationships.Build?
    }
}

// MARK: AppStoreVersionCreateRequest.Data.Attributes
extension AppStoreVersionCreateRequest.Data.Attributes {

    public enum Platform: String, CaseIterable, Codable {
        case iOS = "IOS"
        case macOS = "MAC_OS"
        case tvOS = "TV_OS"
    }

    public enum ReleaseType: String, CaseIterable, Codable {
        case manual = "MANUAL"
        case afterApproval = "AFTER_APPROVAL"
        case scheduled = "SCHEDULED"
    }
}

// MARK: AppStoreVersionCreateRequest.Data.Relationships
extension AppStoreVersionCreateRequest.Data.Relationships {

    public struct App: Codable {

        public vardata: AppStoreVersionCreateRequest.Data.Relationships.App.Data
    }

    public struct Build: Codable {

        public vardata: AppStoreVersionCreateRequest.Data.Relationships.Build.Data?
    }
}

// MARK: AppStoreVersionCreateRequest.Data.Relationships.App
extension AppStoreVersionCreateRequest.Data.Relationships.App {

    public struct Data: Codable {

        public varid: String

        public private(set) var type: String = "apps"
    }
}

// MARK: AppStoreVersionCreateRequest.Data.Relationships.Build
extension AppStoreVersionCreateRequest.Data.Relationships.Build {

    public struct Data: Codable {

        public varid: String

        public private(set) var type: String = "builds"
    }
}
