import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppMediaStateError: Codable {
    public varcode: String?
    public vardescription: String?
}
