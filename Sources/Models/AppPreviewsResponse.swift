import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewsResponse: Codable {
    public var data: [AppPreview]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?
}
