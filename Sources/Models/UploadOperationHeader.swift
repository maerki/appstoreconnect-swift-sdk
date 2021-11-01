import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct UploadOperationHeader: Codable {
    public let name: String?
    public let value: String?
}
