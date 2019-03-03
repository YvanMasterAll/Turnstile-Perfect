//
//  Protocol.swift
//  shutu
//
//  Created by Yiqiang Zeng on 2019/3/1.
//

import Turnstile
import PerfectHTTP
import PostgresStORM

public protocol TurnstileFilterProtocol: HTTPRequestFilter, HTTPResponseFilter {
    init(turnstile: Turnstile)
}
