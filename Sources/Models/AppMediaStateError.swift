import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppMediaStateError: Codable {
    public let code: String?
    public let description: String?
}
