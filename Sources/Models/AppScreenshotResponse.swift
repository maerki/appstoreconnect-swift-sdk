import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotResponse: Codable {
    public var data: AppScreenshot

    public var links: PagedDocumentLinks
}
