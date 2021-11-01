import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppMediaAssetState: Codable {
    public let errors: [AppMediaStateError]?
    public let state: String?
    public let warnings: [AppMediaStateError]?
}
