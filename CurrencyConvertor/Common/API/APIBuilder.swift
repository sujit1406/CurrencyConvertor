//
//  APIBuilder.swift
//  CurrencyConvertor
//
//  Created by Sujith Antony on 26/10/2020.
//  Copyright © 2020 Sujith Antony. All rights reserved.
//

import Foundation
import Alamofire

enum CCService {
    enum CurrencyLayerService: URLRequestConvertible {
        case list
        case live(source:String?)
        
        private var method: HTTPMethod {
            return .get
        }
        
        private var path: String {
            switch self {
            case .list:
                return "/list"
            case .live:
                return "/live"
            }
        }
        
        
        private var parameters: Parameters? {
            switch self {
            case .list:
                return ["access_key": Constants.API.apiAccessKey]
            case .live(let source):
                return ["access_key": Constants.API.apiAccessKey, "source":source ?? ""]
            }
        }
        
        var baseURL: URL {
            return Constants.API.URLBase
        }
        
        var headers: [String : String]? {
            return [:]
        }
        
        func body() throws -> Data? { return nil }
        
        func asURLRequest() throws -> URLRequest {
            var urlRequest = URLRequest(url: baseURL.appendingPathComponent(path))
            urlRequest.httpMethod = method.rawValue
            if let parameters = parameters {
                do {
                    urlRequest = try URLEncoding().encode(urlRequest, with: parameters)
                } catch {
                    throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
                }
            }
            if let body = try body() {
                do {
                    urlRequest.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
                } catch {
                    throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
                }
            }
            if let body = try body() {
                do {
                    urlRequest.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
                } catch {
                    throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
                }
            }
            return urlRequest
        }
    }
}
