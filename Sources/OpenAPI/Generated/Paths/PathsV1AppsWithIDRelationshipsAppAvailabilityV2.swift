// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var appAvailabilityV2: AppAvailabilityV2 {
		AppAvailabilityV2(path: path + "/appAvailabilityV2")
	}

	public struct AppAvailabilityV2 {
		/// Path: `/v1/apps/{id}/relationships/appAvailabilityV2`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.AppAppAvailabilityV2LinkageResponse> {
			Request(path: path, method: "GET", id: "apps_appAvailabilityV2_getToOneRelationship")
		}
	}
}
