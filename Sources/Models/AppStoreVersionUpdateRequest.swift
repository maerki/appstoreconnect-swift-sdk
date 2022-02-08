import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionUpdateRequest: Codable {

    public var data: AppStoreVersionUpdateRequest.Data

    init(
        id: String,
        buildId: String? = nil,
        copyright: String? = nil,
        earliestReleaseDate: Date? = nil,
        releaseType: AppStoreVersionUpdateRequest.Data.Attributes.ReleaseType? = nil,
        usesIdfa: Bool? = nil,
        versionString: String? = nil,
        downloadable: Bool? = nil
    ) {
        var relationships: AppStoreVersionUpdateRequest.Data.Relationships?
        if let buildId = buildId {
            relationships = .init(build: .init(data: .init(id: buildId)))
        }

        data = .init(attributes: .init(copyright: copyright,
                                       earliestReleaseDate: earliestReleaseDate,
                                       releaseType: releaseType,
                                       usesIdfa: usesIdfa,
                                       versionString: versionString,
                                       downloadable: downloadable),
                     id: id,
                     relationships: relationships)
    }
}

// MARK: AppStoreVersionUpdateRequest
extension AppStoreVersionUpdateRequest {

    public struct Data: Codable {

        public var attributes: AppStoreVersionUpdateRequest.Data.Attributes?

        public var id: String

        public var relationships: AppStoreVersionUpdateRequest.Data.Relationships?

        public private(set) var type: String = "appStoreVersions"
    }

}

// MARK: AppStoreVersionUpdateRequest.Data
extension AppStoreVersionUpdateRequest.Data {

    public struct Attributes: Codable {

        public var copyright: String?

        public var earliestReleaseDate: Date?

        public var releaseType: ReleaseType?

        public var usesIdfa: Bool?

        public var versionString: String?

        public var downloadable: Bool?
    }

    public struct Relationships: Codable {

        public var build: AppStoreVersionUpdateRequest.Data.Relationships.Build?
    }
}

// MARK: AppStoreVersionUpdateRequest.Data.Attributes
extension AppStoreVersionUpdateRequest.Data.Attributes {

    public enum ReleaseType: String, Codable {
        case manual = "MANUAL"
        case afterApproval = "AFTER_APPROVAL"
        case scheduled = "SCHEDULED"
    }
}

// MARK: AppStoreVersionUpdateRequest.Data.Relationships
extension AppStoreVersionUpdateRequest.Data.Relationships {

    public struct Build: Codable {

        public var data: AppStoreVersionUpdateRequest.Data.Relationships.Build.Data?
    }
}

// MARK: AppStoreVersionUpdateRequest.Data.Relationships.Build
extension AppStoreVersionUpdateRequest.Data.Relationships.Build {

    public struct Data: Codable {

        public var id: String

        public private(set) var type: String = "builds"
    }
}
