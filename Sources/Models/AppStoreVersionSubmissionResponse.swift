import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmissionResponse: Codable {

    public let data: AppStoreVersionSubmission

    public let links: DocumentLinks

}
