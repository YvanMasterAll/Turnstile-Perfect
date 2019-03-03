//
//  TurnstilePerfect.swift
//  shutu
//
//  Created by Yiqiang Zeng on 2019/3/1.
//

import Turnstile
import TurnstileWeb
import PerfectHTTP

public class TurnstilePerfect {
    
    public static var tokenStore: BaseTokenStore = BaseTokenStore()
    
    public var requestFilter: (HTTPRequestFilter, HTTPFilterPriority)
    public var responseFilter: (HTTPResponseFilter, HTTPFilterPriority)
    
    private let turnstile: Turnstile
    
    public init(realm: Realm,
                filter: TurnstileFilterProtocol.Type = TurnstileFilter.self,
                sessionManager: SessionManager = PerfectSessionManager()) {
        turnstile = Turnstile(sessionManager: sessionManager, realm: realm)
        let filter = filter.init(turnstile: turnstile)
        requestFilter = (filter, HTTPFilterPriority.high)
        responseFilter = (filter, HTTPFilterPriority.high)
    }
}
