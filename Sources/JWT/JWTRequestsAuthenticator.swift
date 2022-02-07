//
//  JWTAuthenticator.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Antoine van der Lee on 08/11/2018.
//

import Foundation
#if os(Linux)
import FoundationNetworking
#endif
import JWTKit

struct JWTToken {
    var token: String
    var created = Date()
    let expireDuration: TimeInterval


    var isExpired: Bool {
        Date().timeIntervalSince(created) < expireDuration
    }
}

final class JWTCreator {
    let signers = JWTSigners()

    let keyIdentifier: String
    let issuerIdentifier: String
    let expireDuration: TimeInterval

    init(keyIdentifier: String, issuerIdentifier: String, expireDuration: TimeInterval) {
        self.keyIdentifier = keyIdentifier
        self.issuerIdentifier = issuerIdentifier
        self.expireDuration = expireDuration
    }

    func signedToken(using privateKey: String) throws -> JWTToken {
        let k = try! ECDSAKey.private(pem: privateKey)
        signers.use(.es256(key: k), kid: JWKIdentifier(string: keyIdentifier))

        let jwt = JWT(keyIdentifier: keyIdentifier, issuerIdentifier: issuerIdentifier, expireDuration: expireDuration)
        let payload = jwt.payload
        let token = try signers.sign(payload, kid: JWKIdentifier(string: keyIdentifier))

        return JWTToken(token: token, expireDuration: expireDuration)
    }
}

/// An Authenticator for URL Requests which makes use of the RequestAdapter from Alamofire.
final class JWTRequestsAuthenticator {

    private var cachedToken: JWTToken?
    private let apiConfiguration: APIConfiguration

    /// The JWT Creator to use for creating the JWT token. Can be overriden for test use cases.
    var jwtCreator: JWTCreator

    init(apiConfiguration: APIConfiguration) {
        self.apiConfiguration = apiConfiguration
        self.jwtCreator = JWTCreator(keyIdentifier: apiConfiguration.privateKeyID, issuerIdentifier: apiConfiguration.issuerID, expireDuration: 60 * 10)
    }

    /// Generates a new JWT Token, but only if the in memory cached one is not expired.
    private func createToken() throws -> JWTToken {
        if let cachedToken = cachedToken, !cachedToken.isExpired {
            return cachedToken
        }

        let token = try jwtCreator.signedToken(using: apiConfiguration.privateKey)
        cachedToken = token
        return token
    }
}

extension JWTRequestsAuthenticator {
    func adapt(_ urlRequest: URLRequest) throws -> URLRequest {
        let token = try createToken().token
        var urlRequest = urlRequest
        urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return urlRequest
    }
}
