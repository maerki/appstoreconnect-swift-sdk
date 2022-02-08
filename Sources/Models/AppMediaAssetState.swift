import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppMediaAssetState: Codable {
    public var errors: [AppMediaStateError]?
    public var state: String?
    public var warnings: [AppMediaStateError]?
}
