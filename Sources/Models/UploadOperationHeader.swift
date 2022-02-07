import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct UploadOperationHeader: Codable {
    public varname: String?
    public varvalue: String?
}
