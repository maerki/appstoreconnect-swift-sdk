import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public struct AppMediaAssetState: Codable {
    public varerrors: [AppMediaStateError]?
    public varstate: String?
    public varwarnings: [AppMediaStateError]?
}
