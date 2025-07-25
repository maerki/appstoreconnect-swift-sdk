// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPageLocalizations.WithID.Relationships {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appCustomProductPageLocalizations/{id}/relationships/appPreviewSets`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCustomProductPageLocalizationAppPreviewSetsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appCustomProductPageLocalizations_appPreviewSets_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
