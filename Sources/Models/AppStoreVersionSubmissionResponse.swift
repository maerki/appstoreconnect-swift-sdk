import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmissionResponse: Codable {

    public var data: AppStoreVersionSubmission

    public var links: DocumentLinks

}
