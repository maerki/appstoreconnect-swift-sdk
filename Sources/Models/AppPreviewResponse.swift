import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewResponse: Codable {
    public var data: AppPreview

    public var links: PagedDocumentLinks
}
