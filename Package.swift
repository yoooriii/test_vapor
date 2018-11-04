// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "MyVaporTest2",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        // postgreSQL
        .package(url: "https://github.com/IBM-Swift/Swift-Kuery-ORM.git", from:"0.3.1"),  // from: "2.0.0"
        .package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL.git", from:"1.2.0"), //from: "1.2.0"

    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor", "SwiftKueryORM", "SwiftKueryPostgreSQL"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

