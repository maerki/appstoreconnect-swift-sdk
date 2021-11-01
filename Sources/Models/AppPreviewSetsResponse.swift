import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewSetsResponse: Codable {
    public let data: [AppPreviewSet]

    public let included: [AppPreview]

    public let links: PagedDocumentLinks

    public let meta: PagingInformation?
}
