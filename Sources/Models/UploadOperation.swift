import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct UploadOperation: Codable {
    public var length: Int?
    public var method: String?
    public var offset: Int?
    public var requestHeaders: [UploadOperationHeader]?
    public var url: String?
}
