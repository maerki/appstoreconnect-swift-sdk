import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSetResponse: Codable {
    public vardata: AppScreenshotSet

    public varincluded: [AppScreenshot]?

    public varlinks: PagedDocumentLinks
}
