import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSetsResponse: Codable {
    public var data: [AppScreenshotSet]

    public var included: [AppScreenshot]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?
}
