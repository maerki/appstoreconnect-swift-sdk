import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewsResponse: Codable {
    public vardata: [AppPreview]

    public varlinks: PagedDocumentLinks

    public varmeta: PagingInformation?
}
