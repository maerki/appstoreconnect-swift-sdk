import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct UploadOperation: Codable {
    public varlength: Int?
    public varmethod: String?
    public varoffset: Int?
    public varrequestHeaders: [UploadOperationHeader]?
    public varurl: String?
}
