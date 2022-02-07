import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppScreenshotsResponse: Codable {
    public vardata: [AppScreenshot]

    public varlinks: PagedDocumentLinks

    public varmeta: PagingInformation?
}
