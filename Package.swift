// swift-tools-version:4.0
// Generated automatically by Perfect Assistant
// Date: 2019-02-21 04:02:35 +0000

import PackageDescription

let package = Package(
	name: "TurnstilePerfect",
	products: [
        .library(
            name: "TurnstilePerfect",
            targets: ["TurnstilePerfect"]),
    ],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", "3.0.0"..<"4.0.0"),
		.package(url: "https://github.com/SwiftORM/Postgres-StORM.git", "3.0.0"..<"4.0.0"),
		.package(url: "https://github.com/stormpath/Turnstile.git", from: "1.0.0"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-Mustache.git", from: "3.0.2")
	],
	targets: [
		.target(name: "TurnstilePerfect", dependencies: [
			"PerfectHTTPServer",		//HTTP服务
			"PostgresStORM", 			//PostgreSQL ORM
			"Turnstile",				//请求认证
			"PerfectMustache"			//模板引擎
			])
	]
)

