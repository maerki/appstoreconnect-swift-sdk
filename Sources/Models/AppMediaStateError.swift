import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppMediaStateError: Codable {
    public var code: String?
    public var description: String?
}
