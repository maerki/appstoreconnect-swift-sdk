import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotsResponse: Codable {
    public var data: [AppScreenshot]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?
}
