import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmissionCreateRequest: Codable {

    public struct Data: Codable {

        public varrelationships: AppStoreVersionSubmissionCreateRequest.Data.Relationships

        public private(set) var type: String = "appStoreVersionSubmissions"
    }

    public vardata: AppStoreVersionSubmissionCreateRequest.Data

    init(appStoreVersionId: String) {
        self.data = .init(relationships: .init(appStoreVersion: .init(data: .init(id: appStoreVersionId))))
    }
}

// MARK: AppStoreVersionSubmissionCreateRequest.Data
extension AppStoreVersionSubmissionCreateRequest.Data {

    public struct Relationships: Codable {

        public varappStoreVersion: AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion

    }
}

// MARK: - AppStoreVersionSubmissionCreateRequest.Data.Relationships
extension AppStoreVersionSubmissionCreateRequest.Data.Relationships {

    public struct AppStoreVersion: Codable {

        public vardata: AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion.Data

    }
}

// MARK: AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion
extension AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion {

    public struct Data: Codable {

        public varid: String

        public private(set) var type: String = "appStoreVersions"

    }
}
