import Foundation
#if os(Linux)
import FoundationNetworking
#endif

public extension APIEndpoint where T == Void {
    static func delete(appStoreVersionLocalizationWithId id: String) -> APIEndpoint {
        return APIEndpoint(path: "appStoreVersionLocalizations/\(id)", method: .delete, parameters: nil)
    }
}
