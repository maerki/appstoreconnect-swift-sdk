import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotsResponse: Codable {
    public let data: [AppScreenshot]

    public let links: PagedDocumentLinks

    public let meta: PagingInformation?
}
