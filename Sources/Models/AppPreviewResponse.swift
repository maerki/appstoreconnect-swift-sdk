import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewResponse: Codable {
    public let data: AppPreview

    public let links: PagedDocumentLinks
}
