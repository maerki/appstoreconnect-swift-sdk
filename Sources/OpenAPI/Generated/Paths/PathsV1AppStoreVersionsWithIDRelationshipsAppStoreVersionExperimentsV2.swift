// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID.Relationships {
	public var appStoreVersionExperimentsV2: AppStoreVersionExperimentsV2 {
		AppStoreVersionExperimentsV2(path: path + "/appStoreVersionExperimentsV2")
	}

	public struct AppStoreVersionExperimentsV2 {
		/// Path: `/v1/appStoreVersions/{id}/relationships/appStoreVersionExperimentsV2`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionAppStoreVersionExperimentsV2LinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appStoreVersions_appStoreVersionExperimentsV2_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
