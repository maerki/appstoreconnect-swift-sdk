import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppPreviewResponse: Codable {
    public vardata: AppPreview

    public varlinks: PagedDocumentLinks
}
