import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmission: Codable {
    public var id: String

    public var links: ResourceLinks<AppStoreVersionSubmissionResponse>

    public var relationships: AppStoreVersionSubmission.Relationships?

    public private(set) var type: String = "appStoreVersionSubmissions"
}

// MARK: AppStoreVersionSubmission
extension AppStoreVersionSubmission {

    public struct Relationships: Codable {

        public var appStoreVersion: AppStoreVersionSubmission.Relationships.AppStoreVersion?

    }
}

// MARK: AppStoreVersionSubmission.Relationships
extension AppStoreVersionSubmission.Relationships {

    public struct AppStoreVersion: Codable {

        public var data: AppStoreVersionSubmission.Relationships.AppStoreVersion.Data?

        public var links: AppStoreVersionSubmission.Relationships.AppStoreVersion.Links?
    }
}

// MARK: AppStoreVersionSubmission.Relationships.AppStoreVersion
extension AppStoreVersionSubmission.Relationships.AppStoreVersion {

    public struct Data: Codable {
        public var id: String

        public private(set) var type: String = "appStoreVersions"
    }

    public struct Links: Codable {
        public var related: URL?

        public var `self`: URL?
    }
}
