// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersionExperimentTreatmentLocalizations.WithID.Relationships {
	public var appScreenshotSets: AppScreenshotSets {
		AppScreenshotSets(path: path + "/appScreenshotSets")
	}

	public struct AppScreenshotSets {
		/// Path: `/v1/appStoreVersionExperimentTreatmentLocalizations/{id}/relationships/appScreenshotSets`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentLocalizationAppScreenshotSetsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appStoreVersionExperimentTreatmentLocalizations_appScreenshotSets_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}
	}
}
