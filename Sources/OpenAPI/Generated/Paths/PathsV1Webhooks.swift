// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var webhooks: Webhooks {
		Webhooks(path: path + "/webhooks")
	}

	public struct Webhooks {
		/// Path: `/v1/webhooks`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.WebhookCreateRequest) -> Request<AppStoreConnect_Swift_SDK.WebhookResponse> {
			Request(path: path, method: "POST", body: body, id: "webhooks_createInstance")
		}
	}
}
