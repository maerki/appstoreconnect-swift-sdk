import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmission: Codable {
    public varid: String

    public varlinks: ResourceLinks<AppStoreVersionSubmissionResponse>

    public varrelationships: AppStoreVersionSubmission.Relationships?

    public private(set) var type: String = "appStoreVersionSubmissions"
}

// MARK: AppStoreVersionSubmission
extension AppStoreVersionSubmission {

    public struct Relationships: Codable {

        public varappStoreVersion: AppStoreVersionSubmission.Relationships.AppStoreVersion?

    }
}

// MARK: AppStoreVersionSubmission.Relationships
extension AppStoreVersionSubmission.Relationships {

    public struct AppStoreVersion: Codable {

        public vardata: AppStoreVersionSubmission.Relationships.AppStoreVersion.Data?

        public varlinks: AppStoreVersionSubmission.Relationships.AppStoreVersion.Links?
    }
}

// MARK: AppStoreVersionSubmission.Relationships.AppStoreVersion
extension AppStoreVersionSubmission.Relationships.AppStoreVersion {

    public struct Data: Codable {
        public varid: String

        public private(set) var type: String = "appStoreVersions"
    }

    public struct Links: Codable {
        public varrelated: URL?

        public var`self`: URL?
    }
}
