//
//  ECPrivateKey.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Antoine van der Lee on 08/11/2018.
//

import Foundation
import Crypto
import Security

public typealias ECPrivateKey = SecKey

extension ECPrivateKey {
    public func es256Sign(digest: String) throws -> String {
        guard let message = digest.data(using: .utf8) else {
            throw JWT.Error.ES256SigningFailed
        }


        let digest = SHA256.hash(data: message)
        let digestData = Data(digest)

        let algorithm = SecKeyAlgorithm.ecdsaSignatureDigestX962SHA256

        var error: Unmanaged<CFError>?

        guard let signature = SecKeyCreateSignature(self, algorithm, digestData as CFData, &error) else {
            throw JWT.Error.privateKeyConversionFailed
        }

        let rawSignature = try (signature as ASN1).toRawSignature()

        return rawSignature.base64URLEncoded()
    }
}
