import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotResponse: Codable {
    public let data: AppScreenshot

    public let links: PagedDocumentLinks
}
