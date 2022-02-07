import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSetsResponse: Codable {
    public let data: [AppScreenshotSet]

    public let included: [AppScreenshot]?

    public let links: PagedDocumentLinks

    public let meta: PagingInformation?
}
