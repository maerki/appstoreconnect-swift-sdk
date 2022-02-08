import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewSetsResponse: Codable {
    public var data: [AppPreviewSet]

    public var included: [AppPreview]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?
}
