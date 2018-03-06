//
//  AuthenticationConfig.swift
//  AGSAuth

import Foundation

/**
 Configurations for the authentication service
*/
public struct AuthenticationConfig {
    let redirectURL: URL
    let minTimeBetweenJwksRequests: UInt
    
    /**
     Initialises the authentication configuration
     
     - parameters:
        - redirectURL: the redirect URL for the developers app
        - minTimeBetweenJwksRequests: The minimum time, in minutes, between Json web key set requests. Default value is 1400 (1 day)
     */
    init(redirectURL: String, minTimeBetweenJwksRequests: UInt = 24*60) {
        self.redirectURL = URL(string: redirectURL)!
        self.minTimeBetweenJwksRequests = minTimeBetweenJwksRequests
    }
}
