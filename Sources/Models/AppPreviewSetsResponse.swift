import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewSetsResponse: Codable {
    public vardata: [AppPreviewSet]

    public varincluded: [AppPreview]

    public varlinks: PagedDocumentLinks

    public varmeta: PagingInformation?
}
