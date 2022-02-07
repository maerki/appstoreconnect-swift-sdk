import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppStoreVersionSubmissionResponse: Codable {

    public vardata: AppStoreVersionSubmission

    public varlinks: DocumentLinks

}
