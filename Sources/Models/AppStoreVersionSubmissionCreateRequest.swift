import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmissionCreateRequest: Codable {

    public struct Data: Codable {

        public var relationships: AppStoreVersionSubmissionCreateRequest.Data.Relationships

        public private(set) var type: String = "appStoreVersionSubmissions"
    }

    public var data: AppStoreVersionSubmissionCreateRequest.Data

    init(appStoreVersionId: String) {
        self.data = .init(relationships: .init(appStoreVersion: .init(data: .init(id: appStoreVersionId))))
    }
}

// MARK: AppStoreVersionSubmissionCreateRequest.Data
extension AppStoreVersionSubmissionCreateRequest.Data {

    public struct Relationships: Codable {

        public var appStoreVersion: AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion

    }
}

// MARK: - AppStoreVersionSubmissionCreateRequest.Data.Relationships
extension AppStoreVersionSubmissionCreateRequest.Data.Relationships {

    public struct AppStoreVersion: Codable {

        public var data: AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion.Data

    }
}

// MARK: AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion
extension AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion {

    public struct Data: Codable {

        public var id: String

        public private(set) var type: String = "appStoreVersions"

    }
}
