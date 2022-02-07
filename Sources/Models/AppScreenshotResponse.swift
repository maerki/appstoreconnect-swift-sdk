import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotResponse: Codable {
    public vardata: AppScreenshot

    public varlinks: PagedDocumentLinks
}
