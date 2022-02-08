import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSetResponse: Codable {
    public var data: AppScreenshotSet

    public var included: [AppScreenshot]?

    public var links: PagedDocumentLinks
}
