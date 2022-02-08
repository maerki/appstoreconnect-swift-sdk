import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct UploadOperationHeader: Codable {
    public var name: String?
    public var value: String?
}
