import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewsResponse: Codable {
    public let data: [AppPreview]

    public let links: PagedDocumentLinks

    public let meta: PagingInformation?
}
