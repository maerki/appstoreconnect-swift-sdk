import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotSetsResponse: Codable {
    public vardata: [AppScreenshotSet]

    public varincluded: [AppScreenshot]?

    public varlinks: PagedDocumentLinks

    public varmeta: PagingInformation?
}
